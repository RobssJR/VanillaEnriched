# ==============================================================================
# Mechanic: Sponge Drying - Check if placed magma block is near any wet sponge
# Context: at center of placed magma_block (~0.5 ~0.5 ~0.5)
# Returns: 1 if any sponge dried, 0 otherwise
# ==============================================================================

# Convert all adjacent wet sponges in 3x3x3 volume into dry sponges
execute store result score .sponges_dried vplus_math run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:sponge replace minecraft:wet_sponge

# If any wet sponge was dried, play steam effects, sound, and return 1
execute if score .sponges_dried vplus_math matches 1.. run return run function main:mechanic/sponge_dry/on_magma_dried

# No wet sponge found
return 0
