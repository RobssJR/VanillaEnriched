data remove storage main:mechanic/colored_names/temp char
execute store success storage main:mechanic/colored_names/temp char_success byte 1 run data modify storage main:mechanic/colored_names/temp char set string storage main:mechanic/colored_names/temp input 0 1

execute if data storage main:mechanic/colored_names/temp {char_success: 1b} run function main:mechanic/colored_names/process_char
execute if data storage main:mechanic/colored_names/temp {char_success: 1b} run function main:mechanic/colored_names/loop

# If string ended while expect_color is 1b (trailing '&'), append it
execute if data storage main:mechanic/colored_names/temp {char_success: 0b, expect_color: 1b} run function main:mechanic/colored_names/append_trailing with storage main:mechanic/colored_names/temp
