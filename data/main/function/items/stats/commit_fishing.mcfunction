data remove storage main:items/stats/temp fish
execute store result storage main:items/stats/temp fish int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ve_fish

scoreboard players set .temp_fi vplus_math 0
execute store result score .temp_fi vplus_math run data get storage main:items/stats/temp fish
scoreboard players operation .temp_fi vplus_math += @s ve_stat_blocks

execute store result storage main:items/stats/macro fish int 1 run scoreboard players get .temp_fi vplus_math

function main:items/stats/apply_fishing_lore with storage main:items/stats/macro
