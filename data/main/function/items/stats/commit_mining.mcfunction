data remove storage main:items/stats/temp blocks
execute store result storage main:items/stats/temp blocks int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ve_blocks

scoreboard players set .temp_b vplus_math 0
execute store result score .temp_b vplus_math run data get storage main:items/stats/temp blocks
scoreboard players operation .temp_b vplus_math += @s ve_stat_blocks

execute store result storage main:items/stats/macro blocks int 1 run scoreboard players get .temp_b vplus_math

function main:items/stats/apply_mining_lore with storage main:items/stats/macro
