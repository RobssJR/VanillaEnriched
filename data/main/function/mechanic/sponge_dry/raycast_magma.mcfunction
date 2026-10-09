# Check if current position hit a magma block and dry surrounding wet sponges
execute if block ~ ~ ~ minecraft:magma_block align xyz positioned ~0.5 ~0.5 ~0.5 if function main:mechanic/sponge_dry/check_magma run return 1

# Decrement raycast step counter
scoreboard players remove .magma_ray vplus_math 1

# Continue raycast forward if steps remain
execute if score .magma_ray vplus_math matches 1.. positioned ^ ^ ^0.2 run return run function main:mechanic/sponge_dry/raycast_magma
