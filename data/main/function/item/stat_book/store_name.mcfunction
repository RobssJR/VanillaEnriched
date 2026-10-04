# Look up cached name for this UUID
data remove storage enriched:tmp test_name
$data modify storage enriched:tmp test_name set from storage enriched:tracking names[{uuid:$(UUID)}].name

# If test_name is missing or empty, fetch the real name
scoreboard players set #s vplus_math 0
execute if data storage enriched:tmp test_name unless data storage enriched:tmp {test_name:""} run scoreboard players set #s vplus_math 1

execute if score #s vplus_math matches 0 as @s run function main:item/stat_book/store_name_fetch with entity @s
