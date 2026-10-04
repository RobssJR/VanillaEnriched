# Found lectern: execute handler and exit
execute if block ~ ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute if block ~ ~ ~ minecraft:lectern run return 1

# If ray hits an impassable solid block that is not air or replaceable, stop raycast early
execute unless block ~ ~ ~ #minecraft:air unless block ~ ~ ~ #minecraft:replaceable run return 0

# Step forward 5cm along view angle
scoreboard players remove #steps vplus_math 1
execute if score #steps vplus_math matches 1.. positioned ^ ^ ^0.05 run function main:item/stat_book/lectern_ray
