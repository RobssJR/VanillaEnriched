# If book has not been converted yet, check if it has the "MCStats" title
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".statBook if data block ~ ~ ~ Book.components."minecraft:written_book_content".title run function main:item/stat_book/book_setup

# If not a stat book, stop
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".statBook run return 0

# Ensure a tracking marker exists at the lectern exactly at block center
execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=marker,distance=..1,tag=enriched.lectern] run summon marker ~ ~ ~ {Tags:["enriched.lectern"]}

# Update lectern book with latest online player scores and names
execute align xyz run function main:item/stat_book/update_book
