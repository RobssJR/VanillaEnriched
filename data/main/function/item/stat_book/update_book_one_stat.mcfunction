# Pop current statistic from queue
data modify storage enriched:tmp book.obj set from storage enriched:tmp stats_queue[0]
data modify storage enriched:tmp obj.obj set from storage enriched:tmp stats_queue[0]

# Update online players' scores for this statistic
execute if score autoOptIn enriched.settings matches 1 as @a at @s run function main:item/stat_book/store_player
execute if score autoOptIn enriched.settings matches 0 as @a[scores={enriched.optedin=1}] at @s run function main:item/stat_book/store_player

# Sort/copy data from storage
execute if score #needsSorting vplus_math matches 1 run function main:item/stat_book/sort_one with storage enriched:tmp book
execute if score #needsSorting vplus_math matches 0 run function main:item/stat_book/copy_one with storage enriched:tmp book

# Start a fresh page with the statistic's title at the top
function main:item/stat_book/header_start

# Fill pages with ranked entries (3 entries per page to fit header neatly)
scoreboard players set #maxPerPage vplus_math 3
scoreboard players set #i vplus_math 0
scoreboard players set #place vplus_math 0
execute store result score #n vplus_math run data get storage enriched:tmp array

# If no entries exist yet
execute if score #n vplus_math matches 0 run data modify storage enriched:tmp book.page append value {text: "Nenhuma pontuação registrada ainda.\n", italic: true, color: "gray"}
execute if score #n vplus_math matches 0 run data modify storage enriched:tmp book.pages append from storage enriched:tmp book.page

# If entries exist, fill recursively and finalize last page
execute if score #n vplus_math matches 1.. run function main:item/stat_book/update_recursive
execute if score #n vplus_math matches 1.. unless score #i vplus_math matches 0 run data modify storage enriched:tmp book.pages append from storage enriched:tmp book.page

# Remove current statistic from queue
data remove storage enriched:tmp stats_queue[0]

# Process next statistic in queue if any
execute if data storage enriched:tmp stats_queue[0] run function main:item/stat_book/update_book_one_stat
