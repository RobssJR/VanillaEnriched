# Calculate current total minutes
scoreboard players operation .p_mins_now vplus_math = @s ve_p_play_time
scoreboard players operation .p_mins_now vplus_math /= .1200 vplus_math

# Get item's recorded minutes
execute store result score .clock_mins vplus_math run data get entity @s SelectedItem.components."minecraft:custom_data".ve_time

# If the minute has changed, update lore!
execute unless score .p_mins_now vplus_math = .clock_mins vplus_math run function main:items/stats/sync_clock
