# Compute current player total distance
function main:items/stats/compute_player_distance

# Get compass's recorded meters
execute store result score .item_dist vplus_math run data get entity @s SelectedItem.components."minecraft:custom_data".ve_dist

# Calculate difference
scoreboard players operation .dist_diff vplus_math = @s ve_dist_m
scoreboard players operation .dist_diff vplus_math -= .item_dist vplus_math

# If difference is 25+ meters while continuously walking, update smoothly
execute if score .dist_diff vplus_math matches 25.. run function main:items/stats/sync_compass
