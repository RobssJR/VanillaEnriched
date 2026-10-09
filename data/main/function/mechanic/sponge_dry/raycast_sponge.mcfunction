# Check if current position hit a wet sponge and test for nearby magma
execute if block ~ ~ ~ minecraft:wet_sponge align xyz positioned ~0.5 ~0.5 ~0.5 if function main:mechanic/sponge_dry/check_sponge run return 1

# Decrement raycast step counter
scoreboard players remove .sponge_ray vplus_math 1

# Continue raycast forward if steps remain
execute if score .sponge_ray vplus_math matches 1.. positioned ^ ^ ^0.2 run return run function main:mechanic/sponge_dry/raycast_sponge
