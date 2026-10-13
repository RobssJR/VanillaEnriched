# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum - Soak / Become Wet
# Context: as @s at @s (Dry Sponge Sulfur Cube reaching max capacity)
# ==============================================================================

# Change body item to wet sponge (visible on model)
item replace entity @s armor.body with minecraft:wet_sponge

# Update tags
tag @s remove vp_sponge_cube
tag @s add vp_wet_sponge_cube

# Reset saturation counter
scoreboard players set @s vp_water_sat 0

# Splash audio and particle feedback indicating saturation
playsound minecraft:entity.generic.splash neutral @a ~ ~ ~ 1.0 0.8
playsound minecraft:block.sponge.absorb neutral @a ~ ~ ~ 1.0 0.7
particle minecraft:splash ~ ~0.5 ~ 0.5 0.5 0.5 0.1 25
particle minecraft:falling_water ~ ~0.4 ~ 0.3 0.3 0.3 0.1 15
