execute store result score #l vplus_math run data get storage enriched:tmp names[0].name
execute if score #l vplus_math matches 1.. run data modify storage enriched:tmp namesCleaned append from storage enriched:tmp names[0]
data remove storage enriched:tmp names[0]

scoreboard players remove #n vplus_math 1
execute if score #n vplus_math matches 1.. run function main:item/stat_book/store_cleanup_names_step
