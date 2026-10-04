data modify storage enriched:tmp names set from storage enriched:tracking names
execute store result score #n vplus_math run data get storage enriched:tmp names
data modify storage enriched:tmp namesCleaned set value []

execute if score #n vplus_math matches 1.. run function main:item/stat_book/store_cleanup_names_step

data modify storage enriched:tracking names set from storage enriched:tmp namesCleaned
