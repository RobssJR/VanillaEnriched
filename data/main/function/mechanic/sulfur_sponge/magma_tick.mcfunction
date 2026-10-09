# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum - Magma Cube Ambient Tick
# Context: as @s at @s (Magma Sulfur Cube)
# ==============================================================================

# Protect underwater
effect give @s minecraft:water_breathing 5 0 true
effect give @s minecraft:fire_resistance 5 0 true

# Underwater boiling effects: steam bubbles and smoke
execute if block ~ ~ ~ minecraft:water run particle minecraft:bubble_column_up ~ ~0.5 ~ 0.25 0.3 0.25 0 2
execute if block ~ ~ ~ minecraft:water run particle minecraft:smoke ~ ~0.6 ~ 0.2 0.2 0.2 0.01 1

# Underwater subtle boiling sound (throttled)
execute if block ~ ~ ~ minecraft:water if score .sponge_snd vplus_math matches 0 run playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 0.25 1.6
