# 1. Revoke advancement immediately so it can re-trigger on subsequent placements
advancement revoke @s only main:mechanic/sponge_dry/place_magma_block

# 2. Check player's immediate block positions (feet, eye, or below)
execute if block ~ ~ ~ minecraft:magma_block align xyz positioned ~0.5 ~0.5 ~0.5 if function main:mechanic/sponge_dry/check_magma run return 1
execute if block ~ ~1 ~ minecraft:magma_block align xyz positioned ~0.5 ~1.5 ~0.5 if function main:mechanic/sponge_dry/check_magma run return 1
execute if block ~ ~-1 ~ minecraft:magma_block align xyz positioned ~0.5 ~-0.5 ~0.5 if function main:mechanic/sponge_dry/check_magma run return 1

# 3. Raycast from eye level forward along player's line of sight
scoreboard players set .magma_ray vplus_math 30
execute at @s anchored eyes positioned ^ ^ ^0.2 run return run function main:mechanic/sponge_dry/raycast_magma
