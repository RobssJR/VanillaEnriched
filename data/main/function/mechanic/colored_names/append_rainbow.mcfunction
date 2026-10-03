$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 0} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§c$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 1} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§6$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 2} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§e$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 3} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§a$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 4} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§b$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 5} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§9$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 6} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§d$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 7} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§5$(current_format)$(char)'

# Increment rainbow index using fast scoreboard math
scoreboard players add .rainbow_idx vplus_math 1
execute if score .rainbow_idx vplus_math matches 8.. run scoreboard players set .rainbow_idx vplus_math 0
execute store result storage main:mechanic/colored_names/temp rainbow_index int 1 run scoreboard players get .rainbow_idx vplus_math
