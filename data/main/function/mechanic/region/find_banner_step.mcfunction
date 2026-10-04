# Check if current position hit a banner without an existing marker
execute if block ~ ~ ~ #minecraft:banners unless entity @e[type=marker,tag=vp_region_marker,distance=..0.8] run return run function main:mechanic/region/create_marker

# Decrement step counter
$scoreboard players set .steps vplus_math $(steps)
scoreboard players remove .steps vplus_math 1

# If steps remain, advance 0.25 blocks forward
execute if score .steps vplus_math matches 1.. store result storage main:temp next.steps int 1 run scoreboard players get .steps vplus_math
execute if score .steps vplus_math matches 1.. positioned ^ ^ ^0.25 run function main:mechanic/region/find_banner_step with storage main:temp next
