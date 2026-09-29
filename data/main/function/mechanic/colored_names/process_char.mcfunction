data modify storage main:mechanic/colored_names/temp input set string storage main:mechanic/colored_names/temp input 1
data modify storage main:mechanic/colored_names/temp handled set value 0b

execute if data storage main:mechanic/colored_names/temp {expect_color: 1b} run function main:mechanic/colored_names/handle_color

execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {char: "&"} run data modify storage main:mechanic/colored_names/temp expect_color set value 1b
execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {char: "&"} run data modify storage main:mechanic/colored_names/temp handled set value 1b

execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {char: "'"} run data modify storage main:mechanic/colored_names/temp char set value "’"
execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {char: '"'} run data modify storage main:mechanic/colored_names/temp char set value "”"
execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {char: "\\"} run data modify storage main:mechanic/colored_names/temp char set value "/"

execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {rainbow_mode: 0b} run function main:mechanic/colored_names/append_valid with storage main:mechanic/colored_names/temp
execute if data storage main:mechanic/colored_names/temp {handled: 0b} if data storage main:mechanic/colored_names/temp {rainbow_mode: 1b} run function main:mechanic/colored_names/append_rainbow with storage main:mechanic/colored_names/temp
