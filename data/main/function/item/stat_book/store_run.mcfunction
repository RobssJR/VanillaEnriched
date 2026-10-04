## Stores all online players' stats for tracked objectives (cached every 5 min)

# If previous cycle is still active, retry in 60s
execute if score #amt enriched.update matches 1.. run schedule function main:item/stat_book/store_run 60s replace
execute if score #amt enriched.update matches 1.. run return 0

# Run again in 5 minutes (300 seconds)
schedule function main:item/stat_book/store_run 300s replace

# Execute custom hooks registered in run_before tag
execute as @a run function #main:item/stat_book/run_before

# Prepare list of tracked objectives
data modify storage enriched:tmp tracked set from storage enriched:tracking tracked
execute store result score #amt enriched.update run data get storage enriched:tmp tracked

# Cache UUID -> Player Name mapping for all online players
execute as @a at @s run function main:item/stat_book/store_name with entity @s

# Process each tracked objective
execute if score #amt enriched.update matches 1.. run function main:item/stat_book/store_all
