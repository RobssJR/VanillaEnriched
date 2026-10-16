data remove storage main:items/stats/temp brushed
execute store result storage main:items/stats/temp brushed int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".ve_brushed

scoreboard players set .temp_br vplus_math 0
execute store result score .temp_br vplus_math run data get storage main:items/stats/temp brushed
scoreboard players operation .temp_br vplus_math += @s ve_stat_blocks

execute store result storage main:items/stats/macro brushed int 1 run scoreboard players get .temp_br vplus_math

function main:items/stats/apply_brush_lore with storage main:items/stats/macro
