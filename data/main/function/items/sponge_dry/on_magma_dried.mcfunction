# ==============================================================================
# Mechanic: Sponge Drying - Effects when magma block dries surrounding sponges
# Context: at center of magma_block (~0.5 ~0.5 ~0.5)
# Returns: 1
# ==============================================================================

# Radiating steam, smoke, embers and bubble pop particles
particle minecraft:cloud ~ ~0.7 ~ 0.5 0.4 0.5 0.05 30
particle minecraft:smoke ~ ~0.8 ~ 0.4 0.3 0.4 0.03 20
particle minecraft:flame ~ ~0.5 ~ 0.25 0.25 0.25 0.02 8
particle minecraft:bubble_pop ~ ~0.6 ~ 0.3 0.3 0.3 0.05 10

# Sizzling boiling audio feedback
playsound minecraft:block.fire.extinguish block @a ~ ~ ~ 1.0 1.0
playsound minecraft:block.lava.extinguish block @a ~ ~ ~ 0.6 1.3

return 1
