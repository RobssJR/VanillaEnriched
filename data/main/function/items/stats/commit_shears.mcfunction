data remove storage main:items/stats/temp sheared
execute store result storage main:items/stats/temp sheared int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ve_sheared

scoreboard players set .temp_s vplus_math 0
execute store result score .temp_s vplus_math run data get storage main:items/stats/temp sheared
scoreboard players operation .temp_s vplus_math += @s ve_stat_blocks

execute store result storage main:items/stats/macro sheared int 1 run scoreboard players get .temp_s vplus_math

function main:items/stats/apply_shears_lore with storage main:items/stats/macro
