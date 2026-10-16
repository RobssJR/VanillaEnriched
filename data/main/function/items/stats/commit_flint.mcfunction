data remove storage main:items/stats/temp fires
execute store result storage main:items/stats/temp fires int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ve_fires

scoreboard players set .temp_f vplus_math 0
execute store result score .temp_f vplus_math run data get storage main:items/stats/temp fires
scoreboard players operation .temp_f vplus_math += @s ve_stat_blocks

execute store result storage main:items/stats/macro fires int 1 run scoreboard players get .temp_f vplus_math

function main:items/stats/apply_flint_lore with storage main:items/stats/macro
