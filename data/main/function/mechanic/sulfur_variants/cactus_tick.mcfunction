# ==============================================================================
# Mechanic: Sulfur Cube - Cactus Cube (Cubo Cacto)
# Context: as @s at @s (Sulfur Cube holding Cactus)
# ==============================================================================

# Protect underwater
effect give @s minecraft:water_breathing 5 0 true

# 1. Destroy dropped items touching the cactus cube (Disposal)
execute at @s as @e[type=item,distance=..1.2] at @s run function main:mechanic/sulfur_variants/cactus_destroy_item

# 2. Contact prick damage (deals 1 cactus damage to players, mobs, and animals)
execute at @s as @e[distance=..1.1] unless entity @s[type=sulfur_cube] unless entity @s[type=item] unless entity @s[type=experience_orb] run damage @s 1 minecraft:cactus

# 3. Subtle occasional prick spark (every 3 seconds)
execute if score .sulfur_snd vplus_math matches 0 run particle minecraft:crit ~ ~0.3 ~ 0.15 0.15 0.15 0.01 1
