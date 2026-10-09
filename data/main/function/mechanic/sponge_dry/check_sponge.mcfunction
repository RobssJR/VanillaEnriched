# ==============================================================================
# Mechanic: Sponge Drying - Check if placed wet sponge is near a magma block
# Context: at center of wet_sponge (~0.5 ~0.5 ~0.5)
# Returns: 1 if dried, 0 otherwise
# ==============================================================================

# 1. Direct orthogonal face checks (down, up, north, south, east, west)
execute if block ~ ~-1 ~ minecraft:magma_block run return run function main:mechanic/sponge_dry/do_dry
execute if block ~ ~1 ~ minecraft:magma_block run return run function main:mechanic/sponge_dry/do_dry
execute if block ~1 ~ ~ minecraft:magma_block run return run function main:mechanic/sponge_dry/do_dry
execute if block ~-1 ~ ~ minecraft:magma_block run return run function main:mechanic/sponge_dry/do_dry
execute if block ~ ~ ~1 minecraft:magma_block run return run function main:mechanic/sponge_dry/do_dry
execute if block ~ ~ ~-1 minecraft:magma_block run return run function main:mechanic/sponge_dry/do_dry

# 2. Check full 3x3x3 volume surrounding the sponge (diagonals / edges)
execute store result score .has_magma vplus_math run clone ~-1 ~-1 ~-1 ~1 ~1 ~1 ~-1 ~-1 ~-1 filtered minecraft:magma_block force
execute if score .has_magma vplus_math matches 1.. run return run function main:mechanic/sponge_dry/do_dry

# No magma block found nearby
return 0
