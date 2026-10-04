function main:item/stat_book/sort_one with storage enriched:tmp sortAll[0]
data remove storage enriched:tmp sortAll[0]

scoreboard players remove #sortAll vplus_math 1
execute if score #sortAll vplus_math matches 1.. run function main:item/stat_book/sort_all_step
