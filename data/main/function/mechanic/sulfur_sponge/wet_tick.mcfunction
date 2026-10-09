# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum - Wet Sponge Tick
# Context: as @s at @s (Wet Sponge Sulfur Cube)
# ==============================================================================

# Protect underwater
effect give @s minecraft:water_breathing 5 0 true
effect give @s minecraft:fire_resistance 5 0 true

# Dripping water particle feedback (throttled visually)
particle minecraft:dripping_water ~ ~0.4 ~ 0.2 0.2 0.2 0.05 2

# Check proximity to Magma Sulfur Cube (or Magma Cube mob) within 6 blocks to dry
execute if entity @e[type=sulfur_cube,tag=vp_magma_cube,distance=..6] run function main:mechanic/sulfur_sponge/dry
execute unless entity @s[tag=vp_sponge_cube] if entity @e[type=magma_cube,distance=..6] run function main:mechanic/sulfur_sponge/dry
