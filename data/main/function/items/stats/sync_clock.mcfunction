# Calculate player's total play time in minutes
scoreboard players operation .p_mins_total vplus_math = @s ve_p_play_time
scoreboard players operation .p_mins_total vplus_math /= .1200 vplus_math

# Calculate total hours and remaining minutes
scoreboard players operation .p_hours_total vplus_math = .p_mins_total vplus_math
scoreboard players operation .p_hours_total vplus_math /= .60 vplus_math
scoreboard players operation .p_mins_rem vplus_math = .p_mins_total vplus_math
scoreboard players operation .p_mins_rem vplus_math %= .60 vplus_math

# Calculate days and remaining hours
scoreboard players operation .p_days vplus_math = .p_hours_total vplus_math
scoreboard players operation .p_days vplus_math /= .24 vplus_math
scoreboard players operation .p_hours_rem vplus_math = .p_hours_total vplus_math
scoreboard players operation .p_hours_rem vplus_math %= .24 vplus_math

# Store values into macro storage
execute store result storage main:items/stats/macro mins int 1 run scoreboard players get .p_mins_total vplus_math
execute store result storage main:items/stats/macro hrs int 1 run scoreboard players get .p_hours_rem vplus_math
execute store result storage main:items/stats/macro total_hrs int 1 run scoreboard players get .p_hours_total vplus_math
execute store result storage main:items/stats/macro rem_m int 1 run scoreboard players get .p_mins_rem vplus_math
execute store result storage main:items/stats/macro days int 1 run scoreboard players get .p_days vplus_math

# Route to formatting macro
execute if score .p_hours_total vplus_math matches 0 run function main:items/stats/format_time_m with storage main:items/stats/macro
execute if score .p_days vplus_math matches 0 if score .p_hours_total vplus_math matches 1.. run function main:items/stats/apply_time_hm_macro with storage main:items/stats/macro
execute if score .p_days vplus_math matches 1.. run function main:items/stats/apply_time_dhm_macro with storage main:items/stats/macro
