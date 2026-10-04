# Extract objective string from current page
data modify storage enriched:tmp newBook.value set value ""
data modify storage enriched:tmp newBook.value set from storage enriched:tmp setup_pages[0].raw
execute if data storage enriched:tmp {newBook:{value:""}} run data modify storage enriched:tmp newBook.value set from storage enriched:tmp setup_pages[0].text
execute if data storage enriched:tmp {newBook:{value:""}} run data modify storage enriched:tmp newBook.value set from storage enriched:tmp setup_pages[0]

# Strip surrounding double quotes if present
execute store success score #hasQuote vplus_math run data modify storage enriched:tmp test_quote set string storage enriched:tmp newBook.value 0 1
execute if data storage enriched:tmp {test_quote:"\""} run data modify storage enriched:tmp newBook.value set string storage enriched:tmp newBook.value 1 -1

# Shorthand aliases support
execute if data storage enriched:tmp {newBook:{value:"jump"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.jump"
execute if data storage enriched:tmp {newBook:{value:"pulos"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.jump"
execute if data storage enriched:tmp {newBook:{value:"walk"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.walk_one_cm"
execute if data storage enriched:tmp {newBook:{value:"caminhada"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.walk_one_cm"
execute if data storage enriched:tmp {newBook:{value:"deaths"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.deaths"
execute if data storage enriched:tmp {newBook:{value:"mortes"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.deaths"
execute if data storage enriched:tmp {newBook:{value:"kills"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.mob_kills"

# Convert legacy 'sb.' prefix to 'enriched.'
data remove storage enriched:tmp test_sb_prefix
data modify storage enriched:tmp test_sb_prefix set string storage enriched:tmp newBook.value 0 3
execute if data storage enriched:tmp {test_sb_prefix:"sb."} run function main:item/stat_book/util_convert_legacy

# If objective string is not empty, register and add to stats list
execute unless data storage enriched:tmp {newBook:{value:""}} run data modify storage enriched:tmp stats append from storage enriched:tmp newBook.value
execute unless data storage enriched:tmp {newBook:{value:""}} run function main:item/stat_book/util_add_unique with storage enriched:tmp newBook
execute unless data storage enriched:tmp {newBook:{value:""}} run data modify storage enriched:tmp obj.obj set from storage enriched:tmp newBook.value
execute unless data storage enriched:tmp {newBook:{value:""}} run function main:item/stat_book/store_setup_storage with storage enriched:tmp obj

# Pop processed page
data remove storage enriched:tmp setup_pages[0]

# Recursively process remaining pages
execute if data storage enriched:tmp setup_pages[0] run function main:item/stat_book/setup_extract_pages
