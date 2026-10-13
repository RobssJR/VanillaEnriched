# 1. Revoke advancement immediately so it can re-trigger on subsequent placements
advancement revoke @s only main:items/sponge_dry/place_wet_sponge

# 2. Check player's immediate block positions (feet, eye, or below)
execute if block ~ ~ ~ minecraft:wet_sponge align xyz positioned ~0.5 ~0.5 ~0.5 if function main:items/sponge_dry/check_sponge run return 1
execute if block ~ ~1 ~ minecraft:wet_sponge align xyz positioned ~0.5 ~1.5 ~0.5 if function main:items/sponge_dry/check_sponge run return 1
execute if block ~ ~-1 ~ minecraft:wet_sponge align xyz positioned ~0.5 ~-0.5 ~0.5 if function main:items/sponge_dry/check_sponge run return 1

# 3. Raycast from eye level forward along player's line of sight
scoreboard players set .sponge_ray vplus_math 30
execute at @s anchored eyes positioned ^ ^ ^0.2 run return run function main:items/sponge_dry/raycast_sponge
