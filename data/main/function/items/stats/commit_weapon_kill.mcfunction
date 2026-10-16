data remove storage main:items/stats/temp kills
execute store result storage main:items/stats/temp kills int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ve_kills

scoreboard players set .temp_k vplus_math 0
execute store result score .temp_k vplus_math run data get storage main:items/stats/temp kills
scoreboard players add .temp_k vplus_math 1

execute store result storage main:items/stats/macro kills int 1 run scoreboard players get .temp_k vplus_math

function main:items/stats/apply_weapon_lore with storage main:items/stats/macro
