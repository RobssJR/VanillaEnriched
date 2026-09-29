$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 0} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§c$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 1} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§6$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 2} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§e$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 3} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§a$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 4} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§b$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 5} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§9$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 6} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§d$(current_format)$(char)'
$execute if data storage main:mechanic/colored_names/temp {rainbow_index: 7} run data modify storage main:mechanic/colored_names/temp output set value '$(output)§5$(current_format)$(char)'

execute if data storage main:mechanic/colored_names/temp {rainbow_index: 7} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 8
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 6} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 7
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 5} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 6
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 4} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 5
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 3} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 4
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 2} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 3
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 1} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 2
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 0} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 1
execute if data storage main:mechanic/colored_names/temp {rainbow_index: 8} run data modify storage main:mechanic/colored_names/temp rainbow_index set value 0
