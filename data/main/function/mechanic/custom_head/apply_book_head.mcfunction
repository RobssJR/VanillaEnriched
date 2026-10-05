# 1. Reset temporary storage
data remove storage main:custom_head book_page
data remove storage main:custom_head head_name
data remove storage main:custom_head book_title
data remove storage main:custom_head uuid

# 2. Extract Base64 from book page 1 (check offhand first, then mainhand)
# Offhand written_book
data modify storage main:custom_head book_page set from entity @s weapon.offhand.components."minecraft:written_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.offhand.components."minecraft:written_book_content".pages[0].text
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.offhand.components."minecraft:written_book_content".pages[0]

# Offhand writable_book
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.offhand.components."minecraft:writable_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.offhand.components."minecraft:writable_book_content".pages[0]

# Mainhand written_book
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.mainhand.components."minecraft:written_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.mainhand.components."minecraft:written_book_content".pages[0].text
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.mainhand.components."minecraft:written_book_content".pages[0]

# Mainhand writable_book
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.mainhand.components."minecraft:writable_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s weapon.mainhand.components."minecraft:writable_book_content".pages[0]

# Unpack compound if book_page ended up as a compound
execute if data storage main:custom_head book_page.raw run data modify storage main:custom_head book_page set from storage main:custom_head book_page.raw
execute if data storage main:custom_head book_page.text run data modify storage main:custom_head book_page set from storage main:custom_head book_page.text

# Abort if no content on page 1
execute unless data storage main:custom_head book_page run return 0
execute if data storage main:custom_head {book_page:""} run return 0

# Extract title if written book
data modify storage main:custom_head book_title set from entity @s weapon.offhand.components."minecraft:written_book_content".title.raw
execute unless data storage main:custom_head book_title run data modify storage main:custom_head book_title set from entity @s weapon.offhand.components."minecraft:written_book_content".title
execute unless data storage main:custom_head book_title run data modify storage main:custom_head book_title set from entity @s weapon.mainhand.components."minecraft:written_book_content".title.raw
execute unless data storage main:custom_head book_title run data modify storage main:custom_head book_title set from entity @s weapon.mainhand.components."minecraft:written_book_content".title
execute if data storage main:custom_head book_title.raw run data modify storage main:custom_head book_title set from storage main:custom_head book_title.raw

# Check prefix of page 1
execute store success score #isBase64 vplus_math run data modify storage main:custom_head test_ey set string storage main:custom_head book_page 0 2

# Validate that book is intended for custom head (starts with "ey" or has valid head title)
scoreboard players set #validBook vplus_math 0
execute if data storage main:custom_head {test_ey:"ey"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"CustomHead"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"customhead"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Custom Head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"custom head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Cabeca"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"cabeca"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Textura"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"textura"} run scoreboard players set #validBook vplus_math 1
execute if score #validBook vplus_math matches 0 run return 0

# Clean surrounding quotes on Base64
execute store success score #hasQuote vplus_math run data modify storage main:custom_head test_quote set string storage main:custom_head book_page 0 1
execute if data storage main:custom_head {test_quote:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 1 -1
execute store success score #hasQuoteEnd vplus_math run data modify storage main:custom_head test_quote_end set string storage main:custom_head book_page -1 1
execute if data storage main:custom_head {test_quote_end:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 0 -1

# 3. Extract custom name from page 2 (optional)
# Offhand written_book
data modify storage main:custom_head head_name set from entity @s weapon.offhand.components."minecraft:written_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.offhand.components."minecraft:written_book_content".pages[1].text
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.offhand.components."minecraft:written_book_content".pages[1]

# Offhand writable_book
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.offhand.components."minecraft:writable_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.offhand.components."minecraft:writable_book_content".pages[1]

# Mainhand written_book
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.mainhand.components."minecraft:written_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.mainhand.components."minecraft:written_book_content".pages[1].text
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.mainhand.components."minecraft:written_book_content".pages[1]

# Mainhand writable_book
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.mainhand.components."minecraft:writable_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s weapon.mainhand.components."minecraft:writable_book_content".pages[1]

# Unpack compound if head_name ended up as a compound
execute if data storage main:custom_head head_name.raw run data modify storage main:custom_head head_name set from storage main:custom_head head_name.raw
execute if data storage main:custom_head head_name.text run data modify storage main:custom_head head_name set from storage main:custom_head head_name.text

# Clean quotes on custom name
execute store success score #hasNameQ vplus_math run data modify storage main:custom_head test_nq set string storage main:custom_head head_name 0 1
execute if data storage main:custom_head {test_nq:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 1 -1
execute store success score #hasNameQE vplus_math run data modify storage main:custom_head test_nqe set string storage main:custom_head head_name -1 1
execute if data storage main:custom_head {test_nqe:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 0 -1

# 4. Transfer Decorative Player Head to safe barrel in overworld
execute in minecraft:overworld unless block 0 319 0 minecraft:barrel run setblock 0 319 0 minecraft:barrel keep

# Determine whether head is in mainhand or offhand
execute if items entity @s weapon.mainhand player_head[custom_data~{can_transform:"1b"}] in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand player_head[custom_data~{can_transform:"1b"}] in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.offhand

# Generate unique UUID for client texture caching
execute store result storage main:custom_head uuid[0] int 1 run random value 1..2147483647
execute store result storage main:custom_head uuid[1] int 1 run random value 1..2147483647
execute store result storage main:custom_head uuid[2] int 1 run random value 1..2147483647
execute store result storage main:custom_head uuid[3] int 1 run random value 1..2147483647

# 5. Apply profile component (with UUID array id and textures value)
data modify block 0 319 0 Items[0].components."minecraft:profile" set value {properties:[{name:"textures",value:""}]}
data modify block 0 319 0 Items[0].components."minecraft:profile".id set from storage main:custom_head uuid
data modify block 0 319 0 Items[0].components."minecraft:profile".properties[0].value set from storage main:custom_head book_page

# 6. Apply custom name if provided on page 2, otherwise default to "Custom Head"
execute if data storage main:custom_head head_name unless data storage main:custom_head {head_name:""} run function main:mechanic/custom_head/set_name_macro with storage main:custom_head
execute unless data storage main:custom_head head_name run data modify block 0 319 0 Items[0].components."minecraft:custom_name" set value '{"text":"Custom Head","color":"gold","italic":false}'
execute if data storage main:custom_head {head_name:""} run data modify block 0 319 0 Items[0].components."minecraft:custom_name" set value '{"text":"Custom Head","color":"gold","italic":false}'

# 7. Remove transformation and crafting lore flags
data remove block 0 319 0 Items[0].components."minecraft:custom_data".can_transform
data remove block 0 319 0 Items[0].components."minecraft:custom_data".decorative_head
data remove block 0 319 0 Items[0].components."minecraft:lore"

# 8. Transfer transformed head back to player
execute if items entity @s weapon.mainhand player_head[custom_data~{can_transform:"1b"}] in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 319 0 container.0
execute if items entity @s weapon.offhand player_head[custom_data~{can_transform:"1b"}] in minecraft:overworld run item replace entity @s weapon.offhand from block 0 319 0 container.0

# Clear barrel slot
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air

# 9. Audiovisual feedback
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 15 normal
title @s actionbar [{"text":"[Vanilla Enriched] ","color":"gold","bold":true},{"text":"Custom Head Created!","color":"green"}]
