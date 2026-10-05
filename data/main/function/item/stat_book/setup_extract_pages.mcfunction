# Extract objective string from current page
data modify storage enriched:tmp newBook.value set value ""
data modify storage enriched:tmp newBook.value set from storage enriched:tmp setup_pages[0].raw
execute if data storage enriched:tmp {newBook:{value:""}} run data modify storage enriched:tmp newBook.value set from storage enriched:tmp setup_pages[0].text
execute if data storage enriched:tmp {newBook:{value:""}} run data modify storage enriched:tmp newBook.value set from storage enriched:tmp setup_pages[0]

# Strip surrounding double quotes if present
execute store success score #hasQuote vplus_math run data modify storage enriched:tmp test_quote set string storage enriched:tmp newBook.value 0 1
execute if data storage enriched:tmp {test_quote:"\""} run data modify storage enriched:tmp newBook.value set string storage enriched:tmp newBook.value 1 -1

# Core Vanilla Shorthand Aliases
execute if data storage enriched:tmp {newBook:{value:"jump"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.jump"
execute if data storage enriched:tmp {newBook:{value:"pulos"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.jump"
execute if data storage enriched:tmp {newBook:{value:"walk"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.walk_one_cm"
execute if data storage enriched:tmp {newBook:{value:"caminhada"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.walk_one_cm"
execute if data storage enriched:tmp {newBook:{value:"deaths"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.deaths"
execute if data storage enriched:tmp {newBook:{value:"mortes"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.deaths"
execute if data storage enriched:tmp {newBook:{value:"kills"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.mob_kills"
execute if data storage enriched:tmp {newBook:{value:"play_time"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.play_time"
execute if data storage enriched:tmp {newBook:{value:"time_played"}} run data modify storage enriched:tmp newBook.value set value "enriched.custom.play_time"

# Ores & Valuables Block Aliases
execute if data storage enriched:tmp {newBook:{value:"diamonds"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.diamond_ore"
execute if data storage enriched:tmp {newBook:{value:"diamond_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.diamond_ore"
execute if data storage enriched:tmp {newBook:{value:"diamantes"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.diamond_ore"
execute if data storage enriched:tmp {newBook:{value:"deepslate_diamonds"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.deepslate_diamond_ore"
execute if data storage enriched:tmp {newBook:{value:"deepslate_diamond_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.deepslate_diamond_ore"
execute if data storage enriched:tmp {newBook:{value:"debris"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.ancient_debris"
execute if data storage enriched:tmp {newBook:{value:"ancient_debris"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.ancient_debris"
execute if data storage enriched:tmp {newBook:{value:"netherite"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.ancient_debris"
execute if data storage enriched:tmp {newBook:{value:"iron"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.iron_ore"
execute if data storage enriched:tmp {newBook:{value:"iron_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.iron_ore"
execute if data storage enriched:tmp {newBook:{value:"ferro"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.iron_ore"
execute if data storage enriched:tmp {newBook:{value:"gold"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.gold_ore"
execute if data storage enriched:tmp {newBook:{value:"gold_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.gold_ore"
execute if data storage enriched:tmp {newBook:{value:"ouro"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.gold_ore"
execute if data storage enriched:tmp {newBook:{value:"coal"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.coal_ore"
execute if data storage enriched:tmp {newBook:{value:"coal_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.coal_ore"
execute if data storage enriched:tmp {newBook:{value:"carvao"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.coal_ore"
execute if data storage enriched:tmp {newBook:{value:"copper"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.copper_ore"
execute if data storage enriched:tmp {newBook:{value:"copper_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.copper_ore"
execute if data storage enriched:tmp {newBook:{value:"cobre"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.copper_ore"
execute if data storage enriched:tmp {newBook:{value:"emerald"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.emerald_ore"
execute if data storage enriched:tmp {newBook:{value:"emerald_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.emerald_ore"
execute if data storage enriched:tmp {newBook:{value:"esmeralda"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.emerald_ore"
execute if data storage enriched:tmp {newBook:{value:"lapis"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.lapis_ore"
execute if data storage enriched:tmp {newBook:{value:"lapis_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.lapis_ore"
execute if data storage enriched:tmp {newBook:{value:"quartz"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.nether_quartz_ore"
execute if data storage enriched:tmp {newBook:{value:"nether_quartz_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.nether_quartz_ore"
execute if data storage enriched:tmp {newBook:{value:"quartzo"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.nether_quartz_ore"
execute if data storage enriched:tmp {newBook:{value:"redstone"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.redstone_ore"
execute if data storage enriched:tmp {newBook:{value:"redstone_ore"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.redstone_ore"

# Building, Stone & Excavation Aliases
execute if data storage enriched:tmp {newBook:{value:"stone"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.stone"
execute if data storage enriched:tmp {newBook:{value:"pedra"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.stone"
execute if data storage enriched:tmp {newBook:{value:"deepslate"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.deepslate"
execute if data storage enriched:tmp {newBook:{value:"cobblestone"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.cobblestone"
execute if data storage enriched:tmp {newBook:{value:"pedregulho"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.cobblestone"
execute if data storage enriched:tmp {newBook:{value:"obsidian"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.obsidian"
execute if data storage enriched:tmp {newBook:{value:"obsidiana"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.obsidian"
execute if data storage enriched:tmp {newBook:{value:"netherrack"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.netherrack"
execute if data storage enriched:tmp {newBook:{value:"end_stone"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.end_stone"
execute if data storage enriched:tmp {newBook:{value:"dirt"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.dirt"
execute if data storage enriched:tmp {newBook:{value:"terra"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.dirt"
execute if data storage enriched:tmp {newBook:{value:"sand"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.sand"
execute if data storage enriched:tmp {newBook:{value:"areia"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.sand"
execute if data storage enriched:tmp {newBook:{value:"gravel"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.gravel"
execute if data storage enriched:tmp {newBook:{value:"cascalho"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.gravel"

# Wood & Tree Aliases
execute if data storage enriched:tmp {newBook:{value:"wood"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.oak_log"
execute if data storage enriched:tmp {newBook:{value:"madeira"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.oak_log"
execute if data storage enriched:tmp {newBook:{value:"oak_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.oak_log"
execute if data storage enriched:tmp {newBook:{value:"spruce_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.spruce_log"
execute if data storage enriched:tmp {newBook:{value:"birch_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.birch_log"
execute if data storage enriched:tmp {newBook:{value:"jungle_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.jungle_log"
execute if data storage enriched:tmp {newBook:{value:"acacia_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.acacia_log"
execute if data storage enriched:tmp {newBook:{value:"dark_oak_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.dark_oak_log"
execute if data storage enriched:tmp {newBook:{value:"mangrove_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.mangrove_log"
execute if data storage enriched:tmp {newBook:{value:"cherry_log"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.cherry_log"

# Special Block Aliases
execute if data storage enriched:tmp {newBook:{value:"spawner"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.spawner"
execute if data storage enriched:tmp {newBook:{value:"sculk"}} run data modify storage enriched:tmp newBook.value set value "enriched.mined.sculk"

# Dynamic Prefix Normalization for mined: or mined. or mine:
data remove storage enriched:tmp test_mined_6
data modify storage enriched:tmp test_mined_6 set string storage enriched:tmp newBook.value 0 6
execute if data storage enriched:tmp {test_mined_6:"mined:"} run data modify storage enriched:tmp mined_block set string storage enriched:tmp newBook.value 6
execute if data storage enriched:tmp {test_mined_6:"mined:"} run function main:item/stat_book/util_apply_mined with storage enriched:tmp

execute if data storage enriched:tmp {test_mined_6:"mined."} run data modify storage enriched:tmp mined_block set string storage enriched:tmp newBook.value 6
execute if data storage enriched:tmp {test_mined_6:"mined."} run function main:item/stat_book/util_apply_mined with storage enriched:tmp

data remove storage enriched:tmp test_mined_5
data modify storage enriched:tmp test_mined_5 set string storage enriched:tmp newBook.value 0 5
execute if data storage enriched:tmp {test_mined_5:"mine:"} run data modify storage enriched:tmp mined_block set string storage enriched:tmp newBook.value 5
execute if data storage enriched:tmp {test_mined_5:"mine:"} run function main:item/stat_book/util_apply_mined with storage enriched:tmp

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
