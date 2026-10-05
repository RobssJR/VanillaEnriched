$execute store result score #tmp vplus_math run data get storage sort:search tmpArray[0]$(attribute) $(scale)
data remove storage sort:search tmpArray[0]

execute if score #highestValue vplus_math <= #tmp vplus_math run scoreboard players operation #highestIndex vplus_math = #i vplus_math
execute if score #highestValue vplus_math <= #tmp vplus_math run scoreboard players operation #highestValue vplus_math = #tmp vplus_math

execute if score #previous vplus_math < #tmp vplus_math run scoreboard players set #isSorted vplus_math 0
scoreboard players operation #previous vplus_math = #tmp vplus_math

scoreboard players add #i vplus_math 1

execute if data storage sort:search tmpArray[0] run function main:backend/sort/search_inner with storage sort:search
