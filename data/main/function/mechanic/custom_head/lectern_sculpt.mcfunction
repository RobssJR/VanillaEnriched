# 1. Check if the block is a lectern with a valid manual book (not a stat book)
execute unless block ~ ~ ~ minecraft:lectern run return 0
execute unless data block ~ ~ ~ Book run return 0
execute if data block ~ ~ ~ Book.components."minecraft:custom_data".statBook run return 0

# 2. Check if player has a player_head in either hand
execute unless items entity @s weapon.mainhand player_head unless items entity @s weapon.offhand player_head run return 0

# 3. Reset storage
data remove storage main:custom_head book_page
data remove storage main:custom_head head_name
data remove storage main:custom_head tq
data remove storage main:custom_head tnq

# 4. Extract Page 1 (Base64) & Page 2 (Name) from lectern Book
# Check writable_book (Livro com Pena)
execute if data block ~ ~ ~ Book.components."minecraft:writable_book_content".pages[0].raw run data modify storage main:custom_head book_page set from block ~ ~ ~ Book.components."minecraft:writable_book_content".pages[0].raw
execute if data block ~ ~ ~ Book.components."minecraft:writable_book_content".pages[1].raw run data modify storage main:custom_head head_name set from block ~ ~ ~ Book.components."minecraft:writable_book_content".pages[1].raw

# Check written_book (Livro Assinado) using macro helper
execute if data block ~ ~ ~ Book.components."minecraft:written_book_content".pages[0] run function main:mechanic/custom_head/read_written_book_page with block ~ ~ ~ Book.components."minecraft:written_book_content".pages[0]
execute if data block ~ ~ ~ Book.components."minecraft:written_book_content".pages[1] run function main:mechanic/custom_head/read_written_book_name with block ~ ~ ~ Book.components."minecraft:written_book_content".pages[1]

# Fallbacks for written_book
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages[0].text
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages[0]

execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages[1].text
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block ~ ~ ~ Book.components."minecraft:written_book_content".pages[1]

# Unpack if book_page or head_name was extracted as an inner compound
execute if data storage main:custom_head book_page.raw run data modify storage main:custom_head book_page set from storage main:custom_head book_page.raw
execute if data storage main:custom_head book_page.text run data modify storage main:custom_head book_page set from storage main:custom_head book_page.text

execute if data storage main:custom_head head_name.raw run data modify storage main:custom_head head_name set from storage main:custom_head head_name.raw
execute if data storage main:custom_head head_name.text run data modify storage main:custom_head head_name set from storage main:custom_head head_name.text

# 5. Abort if no Base64 content on page 1
execute unless data storage main:custom_head book_page run return 0
execute if data storage main:custom_head {book_page:""} run return 0

# Clean leading quote if present
execute store success score #q vplus_math run data modify storage main:custom_head tq set string storage main:custom_head book_page 0 1
execute if data storage main:custom_head {tq:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 1

# Clean leading quote on name if present
execute store success score #nq vplus_math run data modify storage main:custom_head tnq set string storage main:custom_head head_name 0 1
execute if data storage main:custom_head {tnq:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 1

# 6. Ensure processing barrel exists in overworld and clear container.0
execute in minecraft:overworld unless block 0 319 0 minecraft:barrel run setblock 0 319 0 minecraft:barrel keep
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air

# 7. Transfer player_head from player's hand into barrel container.0
execute if items entity @s weapon.mainhand player_head in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand player_head if items entity @s weapon.offhand player_head in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.offhand

# 8. Apply texture profile (NO id field, pure textures value!)
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:profile" set value {properties:[{name:"textures",value:""}]}
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:profile".properties[0].value set from storage main:custom_head book_page

# Verify texture was set, abort and return item if failed
execute in minecraft:overworld unless data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile".properties[0].value run function main:mechanic/custom_head/sculpt_cancel
execute in minecraft:overworld unless data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile".properties[0].value run return 0
execute in minecraft:overworld if data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile"{properties:[{value:""}]} run function main:mechanic/custom_head/sculpt_cancel
execute in minecraft:overworld if data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile"{properties:[{value:""}]} run return 0

# 9. Apply custom name as compound (gold, non-italic)
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name" set value {text:"Custom Head",color:"gold",italic:false}
execute if data storage main:custom_head head_name unless data storage main:custom_head {head_name:""} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name".text set from storage main:custom_head head_name

# 10. Clean old flags and lore
execute in minecraft:overworld run data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:lore"
execute in minecraft:overworld run data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".can_transform
execute in minecraft:overworld run data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".decorative_head
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".head_applied set value 1b

# 11. Transfer sculpted head back to player's hand
execute if items entity @s weapon.mainhand player_head in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 319 0 container.0
execute unless items entity @s weapon.mainhand player_head in minecraft:overworld run item replace entity @s weapon.offhand from block 0 319 0 container.0

# Clear container.0
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air

# 12. Immersive Audiovisual feedback (Stonecutter sculpting + Librarian work sound)
playsound minecraft:ui.stonecutter.take_result player @s ~ ~ ~ 1 1
playsound minecraft:entity.villager.work_librarian player @s ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 15 normal
title @s actionbar [{"text":"[Vanilla Enriched] ","color":"gold","bold":true},{"text":"Sculpted from Manual!","color":"green"}]
