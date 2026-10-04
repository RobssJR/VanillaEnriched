# Ensure book has a valid statistics list (support both new 'stats' array and legacy 'stat' string)
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".stats if data block ~ ~ ~ Book.components."minecraft:custom_data".stat run data modify block ~ ~ ~ Book.components."minecraft:custom_data".stats set value []
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".stats[0] if data block ~ ~ ~ Book.components."minecraft:custom_data".stat run data modify block ~ ~ ~ Book.components."minecraft:custom_data".stats append from block ~ ~ ~ Book.components."minecraft:custom_data".stat
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".stats[0] run return 0

# Check secret mode level
execute store result score #sec vplus_math run data get block ~ ~ ~ Book.components."minecraft:custom_data".secret

# Update online player names in cache
execute as @a at @s run function main:item/stat_book/store_name with entity @s

# Reset pages in storage
data merge storage enriched:tmp {book: {pages: [], page: [], pageArray: [], tmp: ''}}

# Copy statistics list to processing queue
data modify storage enriched:tmp stats_queue set from block ~ ~ ~ Book.components."minecraft:custom_data".stats

# Process all statistics page by page
execute if data storage enriched:tmp stats_queue[0] run function main:item/stat_book/update_book_one_stat

# Write all generated pages back to lectern book
data modify block ~ ~ ~ Book.components."minecraft:written_book_content".pages set from storage enriched:tmp book.pages
