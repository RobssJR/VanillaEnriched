# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum - Dry Sponge
# Context: as @s at @s (Wet Sponge Sulfur Cube near Magma Sulfur Cube)
# ==============================================================================

# Transform wet sponge back into dry sponge in body slot
item replace entity @s armor.body with minecraft:sponge

# Reset saturation score
scoreboard players set @s vp_water_sat 0

# Update tags
tag @s remove vp_wet_sponge_cube
tag @s add vp_sponge_cube

# Steam and heat evaporation particle burst
particle minecraft:cloud ~ ~0.6 ~ 0.35 0.35 0.35 0.04 22
particle minecraft:flame ~ ~0.5 ~ 0.2 0.2 0.2 0.02 8
particle minecraft:smoke ~ ~0.8 ~ 0.3 0.3 0.3 0.03 14

# Sizzling boiling audio feedback
playsound minecraft:block.fire.extinguish neutral @a ~ ~ ~ 0.85 1.15
playsound minecraft:block.lava.extinguish neutral @a ~ ~ ~ 0.5 1.4
