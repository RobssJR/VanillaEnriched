# ==============================================================================
# Mechanic: Sponge Drying - Transform wet sponge into dry sponge
# Context: at center of wet_sponge (~0.5 ~0.5 ~0.5)
# Returns: 1
# ==============================================================================

# Replace wet sponge block with dry sponge
setblock ~ ~ ~ minecraft:sponge

# Steam, cloud, smoke, flame and boiling pop particles
particle minecraft:cloud ~ ~0.6 ~ 0.35 0.35 0.35 0.04 25
particle minecraft:smoke ~ ~0.7 ~ 0.3 0.3 0.3 0.02 15
particle minecraft:flame ~ ~0.4 ~ 0.15 0.15 0.15 0.02 6
particle minecraft:bubble_pop ~ ~0.5 ~ 0.25 0.25 0.25 0.05 8

# Sizzling boiling audio feedback
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.6 1.3

return 1
