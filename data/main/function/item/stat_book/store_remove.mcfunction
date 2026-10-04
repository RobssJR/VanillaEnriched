# Get current objective
data modify storage enriched:tmp remove.obj set from storage enriched:tmp remove.tracked[0]
data remove storage enriched:tmp remove.tracked[0]

function main:item/stat_book/store_remove_one with storage enriched:tmp remove

scoreboard players remove #amt vplus_math 1
execute if score #amt vplus_math matches 1.. run function main:item/stat_book/store_remove with storage enriched:tmp remove
