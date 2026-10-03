# Load current_name into input for character processing
data modify storage main:mechanic/colored_names/temp input set from storage main:mechanic/colored_names/temp current_name
data modify storage main:mechanic/colored_names/temp output set value ""
data modify storage main:mechanic/colored_names/temp current_format set value ""
data modify storage main:mechanic/colored_names/temp expect_color set value 0b
data modify storage main:mechanic/colored_names/temp rainbow_mode set value 0b
data modify storage main:mechanic/colored_names/temp rainbow_index set value 0
data modify storage main:mechanic/colored_names/temp has_color set value 0b

scoreboard players set .rainbow_idx vplus_math 0

data remove storage main:mechanic/colored_names/temp valid_color
data remove storage main:mechanic/colored_names/temp char

function main:mechanic/colored_names/loop
