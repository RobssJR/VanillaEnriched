execute store result score #length vplus_math run data get storage sort:search array
scoreboard players set #i vplus_math 0
scoreboard players set #highestIndex vplus_math 0
scoreboard players set #highestValue vplus_math -2147483648
scoreboard players set #isSorted vplus_math 1
scoreboard players set #previous vplus_math 2147483647

data modify storage sort:search tmpArray set from storage sort:search array
function main:backend/sort/search_inner with storage sort:search

execute if score #isSorted vplus_math matches 1 run data modify storage sort:search result append from storage sort:search array[]
execute if score #isSorted vplus_math matches 1 run return 1

execute store result storage sort:search i int 1 run scoreboard players get #highestIndex vplus_math
function main:backend/sort/search_copy with storage sort:search

execute store result score #length vplus_math run data get storage sort:search array
execute if score #length vplus_math matches 1.. run function main:backend/sort/search_run with storage sort:search
