# Verify if the book is titled "MCStats" or "EnrichedStats"
data merge storage enriched:tmp {newBook: {title: ""}}
data modify storage enriched:tmp newBook.title set from block ~ ~ ~ Book.components."minecraft:written_book_content".title.raw
execute if data storage enriched:tmp {newBook:{title:""}} run data modify storage enriched:tmp newBook.title set from block ~ ~ ~ Book.components."minecraft:written_book_content".title
execute unless data storage enriched:tmp {newBook:{title:"MCStats"}} unless data storage enriched:tmp {newBook:{title:"EnrichedStats"}} run return 0

# Extract tracked objectives page by page
data modify storage enriched:tmp stats set value []
data merge storage enriched:tmp {newBook:{location:"enriched:tracking","path":"tracked",value:""}}
data modify storage enriched:tmp setup_pages set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages
execute if data storage enriched:tmp setup_pages[0] run function main:item/stat_book/setup_extract_pages

# If no valid statistics were found across pages, abort
execute unless data storage enriched:tmp stats[0] run return 0

# Store statistics list in custom_data
data modify block ~ ~ ~ Book.components."minecraft:custom_data".statBook set value 1b
data modify block ~ ~ ~ Book.components."minecraft:custom_data".stats set from storage enriched:tmp stats
data modify block ~ ~ ~ Book.components."minecraft:custom_data".stat set from storage enriched:tmp stats[0]

# Set standard Vanilla Enriched custom name and lore
data modify block ~ ~ ~ Book.components."minecraft:custom_name" set value {translate:"enriched.book.title",fallback:"Statistics Book",italic:false,color:"gold"}
data modify block ~ ~ ~ Book.components."minecraft:lore" set value [{translate:"enriched.book.lore.1",fallback:"Automatically tracks player statistics.",italic:false,color:"dark_purple"},{translate:"enriched.book.lore.2",fallback:"Must be placed on a lectern.",italic:false,color:"dark_purple"},{translate:"enriched.book.lore.3",fallback:"Tracked statistics:",italic:false,color:"dark_purple"}]
data modify storage enriched:tmp lore_stat set value {text:"",color:"yellow",italic:false}
data modify storage enriched:tmp lore_stat.text set from storage enriched:tmp stats[0]
data modify block ~ ~ ~ Book.components."minecraft:lore" append from storage enriched:tmp lore_stat

# Cache author name for player
data modify storage enriched:tmp author set from block ~ ~ ~ Book.components."minecraft:written_book_content".author
execute if data storage enriched:tmp author unless data storage enriched:tmp {author:""} as @s run function main:item/stat_book/store_author_name with entity @s

# Cache online players' names immediately
execute as @a at @s run function main:item/stat_book/store_name with entity @s

# Update all pages of the book immediately
function main:item/stat_book/update_book

# Audiovisual feedback (Vanilla Enriched)
playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2
particle enchant ~ ~1.2 ~ 0.3 0.3 0.3 0.5 25 normal
title @s actionbar [{"text":"[Vanilla Enriched] ","color":"gold","bold":true},{"text":"Stat Book Activated!","color":"green"}]
