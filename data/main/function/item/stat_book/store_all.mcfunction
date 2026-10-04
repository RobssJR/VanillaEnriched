# Get current objective from queue
data modify storage enriched:tmp obj.obj set from storage enriched:tmp tracked[0]
data remove storage enriched:tmp tracked[0]

# Ensure objective entry exists in tracking storage
function main:item/stat_book/store_setup_storage with storage enriched:tmp obj

# Store score for every online player
execute if score autoOptIn enriched.settings matches 1 as @a at @s run function main:item/stat_book/store_player
execute if score autoOptIn enriched.settings matches 0 as @a[scores={enriched.optedin=1}] at @s run function main:item/stat_book/store_player

# Check if more objectives need processing
scoreboard players remove #amt enriched.update 1
execute if score #amt enriched.update matches 1.. run schedule function main:item/stat_book/store_all 1t

# If refreshType is 3 (global timer), update all lecterns when finished
execute if score #amt enriched.update matches 0 if score refreshType enriched.settings matches 3 run schedule function main:item/stat_book/update_all 1s
