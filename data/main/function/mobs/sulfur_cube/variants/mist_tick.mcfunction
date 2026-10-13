# ==============================================================================
# Mechanic: Sulfur Cube - Mist Machine (A Máquina de Névoa - Efeito Sutil)
# Context: as @s at @s (Sulfur Cube holding Packed Ice / Blue Ice)
# ==============================================================================

# Protect underwater & prevent freezing/burning
effect give @s minecraft:water_breathing 5 0 true
effect give @s minecraft:fire_resistance 5 0 true

# Subtle, soft cold motes & gentle ground mist
particle minecraft:snowflake ~ ~0.3 ~ 0.25 0.1 0.25 0.01 2
particle minecraft:cloud ~ ~0.2 ~ 0.3 0.05 0.3 0.005 1

# Frost Walker: Freeze water surface into frosted ice beneath the cube
execute if block ~ ~-1 ~ minecraft:water run setblock ~ ~-1 ~ minecraft:frosted_ice
execute if block ~ ~ ~ minecraft:water run setblock ~ ~ ~ minecraft:frosted_ice

# Natural Extinguisher: Put out fires and cool surface lava
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:fire
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:soul_fire
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:obsidian replace minecraft:lava

# Soft chilly snow sound (every 3 seconds, low volume)
execute if score .sulfur_snd vplus_math matches 0 run playsound minecraft:block.powder_snow.step neutral @a ~ ~ ~ 0.3 0.9
