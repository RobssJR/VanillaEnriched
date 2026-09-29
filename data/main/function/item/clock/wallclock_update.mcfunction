# Update the storage variables for the macros
execute store result storage vplus:time hour int 1 run scoreboard players get .hour vplus_math
execute store result storage vplus:time minute int 1 run scoreboard players get .minute vplus_math
execute store result storage vplus:time day int 1 run scoreboard players get .day_of_season vplus_math
execute store result storage vplus:time year int 1 run scoreboard players get .year vplus_math

# Setup Strings for Seasons
execute if score .season vplus_math matches 0 run data modify storage vplus:time s_name set value "Spring"
execute if score .season vplus_math matches 0 run data modify storage vplus:time s_icon set value "✿"
execute if score .season vplus_math matches 0 run data modify storage vplus:time s_color set value "green"

execute if score .season vplus_math matches 1 run data modify storage vplus:time s_name set value "Summer"
execute if score .season vplus_math matches 1 run data modify storage vplus:time s_icon set value "☀"
execute if score .season vplus_math matches 1 run data modify storage vplus:time s_color set value "yellow"

execute if score .season vplus_math matches 2 run data modify storage vplus:time s_name set value "Autumn"
execute if score .season vplus_math matches 2 run data modify storage vplus:time s_icon set value "🍁"
execute if score .season vplus_math matches 2 run data modify storage vplus:time s_color set value "gold"

execute if score .season vplus_math matches 3 run data modify storage vplus:time s_name set value "Winter"
execute if score .season vplus_math matches 3 run data modify storage vplus:time s_icon set value "❄"
execute if score .season vplus_math matches 3 run data modify storage vplus:time s_color set value "aqua"

# Run the text display macro
execute if score .minute vplus_math matches 0..9 as @e[type=text_display,tag=vplus_wc_text] run function main:item/clock/wallclock_macro_0 with storage vplus:time
execute if score .minute vplus_math matches 10..59 as @e[type=text_display,tag=vplus_wc_text] run function main:item/clock/wallclock_macro with storage vplus:time
