# Ensure player's total lifetime distance is computed
function main:items/stats/compute_player_distance

# Calculate km and decimal
scoreboard players operation .dist_km vplus_math = @s ve_dist_m
scoreboard players operation .dist_km vplus_math /= .1000 vplus_math

scoreboard players operation .dist_rem vplus_math = @s ve_dist_m
scoreboard players operation .dist_rem vplus_math %= .1000 vplus_math
scoreboard players operation .dist_rem vplus_math /= .100 vplus_math

# Store values into macro storage
execute store result storage main:items/stats/macro dist int 1 run scoreboard players get @s ve_dist_m
execute store result storage main:items/stats/macro km int 1 run scoreboard players get .dist_km vplus_math
execute store result storage main:items/stats/macro dec int 1 run scoreboard players get .dist_rem vplus_math

# Route to formatting macro
execute if score @s ve_dist_m matches ..999 run function main:items/stats/format_dist_m with storage main:items/stats/macro
execute if score @s ve_dist_m matches 1000.. run function main:items/stats/apply_dist_km_macro with storage main:items/stats/macro
