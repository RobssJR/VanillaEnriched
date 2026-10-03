data modify storage main:mechanic/colored_names/temp expect_color set value 0b
data modify storage main:mechanic/colored_names/temp handled set value 1b
data modify storage main:mechanic/colored_names/temp valid_color set value 0b
data modify storage main:mechanic/colored_names/temp is_format set value 0b

# Handle && escape (literal '&')
execute if data storage main:mechanic/colored_names/temp {char:"&"} run function main:mechanic/colored_names/append_valid with storage main:mechanic/colored_names/temp
execute if data storage main:mechanic/colored_names/temp {char:"&"} run data modify storage main:mechanic/colored_names/temp has_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"&"} run return 1

# Normalize uppercase color/format codes to lowercase
execute if data storage main:mechanic/colored_names/temp {char:"A"} run data modify storage main:mechanic/colored_names/temp char set value "a"
execute if data storage main:mechanic/colored_names/temp {char:"B"} run data modify storage main:mechanic/colored_names/temp char set value "b"
execute if data storage main:mechanic/colored_names/temp {char:"C"} run data modify storage main:mechanic/colored_names/temp char set value "c"
execute if data storage main:mechanic/colored_names/temp {char:"D"} run data modify storage main:mechanic/colored_names/temp char set value "d"
execute if data storage main:mechanic/colored_names/temp {char:"E"} run data modify storage main:mechanic/colored_names/temp char set value "e"
execute if data storage main:mechanic/colored_names/temp {char:"F"} run data modify storage main:mechanic/colored_names/temp char set value "f"
execute if data storage main:mechanic/colored_names/temp {char:"K"} run data modify storage main:mechanic/colored_names/temp char set value "k"
execute if data storage main:mechanic/colored_names/temp {char:"L"} run data modify storage main:mechanic/colored_names/temp char set value "l"
execute if data storage main:mechanic/colored_names/temp {char:"M"} run data modify storage main:mechanic/colored_names/temp char set value "m"
execute if data storage main:mechanic/colored_names/temp {char:"N"} run data modify storage main:mechanic/colored_names/temp char set value "n"
execute if data storage main:mechanic/colored_names/temp {char:"O"} run data modify storage main:mechanic/colored_names/temp char set value "o"
execute if data storage main:mechanic/colored_names/temp {char:"R"} run data modify storage main:mechanic/colored_names/temp char set value "r"
execute if data storage main:mechanic/colored_names/temp {char:"Z"} run data modify storage main:mechanic/colored_names/temp char set value "z"

# Standard Colors
execute if data storage main:mechanic/colored_names/temp {char:"0"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"1"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"2"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"3"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"4"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"5"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"6"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"7"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"8"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"9"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"a"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"b"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"c"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"d"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"e"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"f"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b

# Formats
execute if data storage main:mechanic/colored_names/temp {char:"k"} run data modify storage main:mechanic/colored_names/temp is_format set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"l"} run data modify storage main:mechanic/colored_names/temp is_format set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"m"} run data modify storage main:mechanic/colored_names/temp is_format set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"n"} run data modify storage main:mechanic/colored_names/temp is_format set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"o"} run data modify storage main:mechanic/colored_names/temp is_format set value 1b
execute if data storage main:mechanic/colored_names/temp {char:"r"} run data modify storage main:mechanic/colored_names/temp is_format set value 1b

# Chroma / Rainbow
execute if data storage main:mechanic/colored_names/temp {char:"z"} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b
execute if data storage main:mechanic/colored_names/temp {is_format: 1b} run data modify storage main:mechanic/colored_names/temp valid_color set value 1b

execute if data storage main:mechanic/colored_names/temp {char:"z"} run data modify storage main:mechanic/colored_names/temp rainbow_mode set value 1b
execute if data storage main:mechanic/colored_names/temp {valid_color: 1b} if data storage main:mechanic/colored_names/temp {is_format: 0b} unless data storage main:mechanic/colored_names/temp {char:"z"} run data modify storage main:mechanic/colored_names/temp rainbow_mode set value 0b

execute if data storage main:mechanic/colored_names/temp {valid_color: 1b} if data storage main:mechanic/colored_names/temp {is_format: 0b} run data modify storage main:mechanic/colored_names/temp current_format set value ""
execute if data storage main:mechanic/colored_names/temp {char:"r"} run data modify storage main:mechanic/colored_names/temp current_format set value ""

# Flag that a valid color/format was used
execute if data storage main:mechanic/colored_names/temp {valid_color: 1b} run data modify storage main:mechanic/colored_names/temp has_color set value 1b

execute if data storage main:mechanic/colored_names/temp {char:"k"} run function main:mechanic/colored_names/append_format with storage main:mechanic/colored_names/temp
execute if data storage main:mechanic/colored_names/temp {char:"l"} run function main:mechanic/colored_names/append_format with storage main:mechanic/colored_names/temp
execute if data storage main:mechanic/colored_names/temp {char:"m"} run function main:mechanic/colored_names/append_format with storage main:mechanic/colored_names/temp
execute if data storage main:mechanic/colored_names/temp {char:"n"} run function main:mechanic/colored_names/append_format with storage main:mechanic/colored_names/temp
execute if data storage main:mechanic/colored_names/temp {char:"o"} run function main:mechanic/colored_names/append_format with storage main:mechanic/colored_names/temp

execute if data storage main:mechanic/colored_names/temp {valid_color: 1b} run function main:mechanic/colored_names/append_color with storage main:mechanic/colored_names/temp

# Invalid color code (treat as literal & + char)
execute if data storage main:mechanic/colored_names/temp {valid_color: 0b} if data storage main:mechanic/colored_names/temp {char: "'"} run data modify storage main:mechanic/colored_names/temp char set value "’"
execute if data storage main:mechanic/colored_names/temp {valid_color: 0b} if data storage main:mechanic/colored_names/temp {char: '"'} run data modify storage main:mechanic/colored_names/temp char set value "”"
execute if data storage main:mechanic/colored_names/temp {valid_color: 0b} if data storage main:mechanic/colored_names/temp {char: "\\"} run data modify storage main:mechanic/colored_names/temp char set value "/"
execute if data storage main:mechanic/colored_names/temp {valid_color: 0b} run function main:mechanic/colored_names/append_invalid with storage main:mechanic/colored_names/temp
