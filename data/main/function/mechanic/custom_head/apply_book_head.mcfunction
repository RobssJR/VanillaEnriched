# 1. Reset storage
data remove storage main:custom_head book_page
data remove storage main:custom_head head_name

# 2. Ensure container barrel exists
execute in minecraft:overworld unless block 0 319 0 minecraft:barrel run setblock 0 319 0 minecraft:barrel keep
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air
execute in minecraft:overworld run item replace block 0 319 0 container.1 with minecraft:air

# 3. Transfer book to barrel container.1 to safely read components
scoreboard players set #book_hand vplus_math 0
execute if items entity @s weapon.offhand written_book in minecraft:overworld run item replace block 0 319 0 container.1 from entity @s weapon.offhand
execute if items entity @s weapon.offhand written_book run scoreboard players set #book_hand vplus_math 2
execute if items entity @s weapon.offhand writable_book in minecraft:overworld run item replace block 0 319 0 container.1 from entity @s weapon.offhand
execute if items entity @s weapon.offhand writable_book run scoreboard players set #book_hand vplus_math 2

execute if items entity @s weapon.mainhand written_book in minecraft:overworld run item replace block 0 319 0 container.1 from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand written_book run scoreboard players set #book_hand vplus_math 1
execute if items entity @s weapon.mainhand writable_book in minecraft:overworld run item replace block 0 319 0 container.1 from entity @s weapon.mainhand
execute if items entity @s weapon.mainhand writable_book run scoreboard players set #book_hand vplus_math 1

# 4. Extract page 1 (Base64) and page 2 (custom name) from container.1
data modify storage main:custom_head book_page set from block 0 319 0 Items[{Slot:1b}].components."minecraft:writable_book_content".pages[0].raw
data modify storage main:custom_head head_name set from block 0 319 0 Items[{Slot:1b}].components."minecraft:writable_book_content".pages[1].raw

execute if data block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0] run function main:mechanic/custom_head/read_written_book_page with block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0]
execute if data block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[1] run function main:mechanic/custom_head/read_written_book_name with block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[1]

# Direct fallbacks
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0].text
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[0]
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from block 0 319 0 Items[{Slot:1b}].components."minecraft:writable_book_content".pages[0]

execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[1].text
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block 0 319 0 Items[{Slot:1b}].components."minecraft:written_book_content".pages[1]
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from block 0 319 0 Items[{Slot:1b}].components."minecraft:writable_book_content".pages[1]

# Return book to player
execute if score #book_hand vplus_math matches 2 in minecraft:overworld run item replace entity @s weapon.offhand from block 0 319 0 container.1
execute if score #book_hand vplus_math matches 1 in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 319 0 container.1
execute in minecraft:overworld run item replace block 0 319 0 container.1 with minecraft:air

# 5. Validate Base64
execute unless data storage main:custom_head book_page run return 0
execute if data storage main:custom_head {book_page:""} run return 0

# Clean leading quote on Base64
execute store success score #q vplus_math run data modify storage main:custom_head tq set string storage main:custom_head book_page 0 1
execute if data storage main:custom_head {tq:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 1

# Clean leading quote on custom name
execute store success score #nq vplus_math run data modify storage main:custom_head tnq set string storage main:custom_head head_name 0 1
execute if data storage main:custom_head {tnq:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 1

# 6. Transfer player_head to barrel container.0
execute if items entity @s weapon.mainhand player_head in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand player_head in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.offhand

# 7. Apply texture profile (no invalid id field)
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:profile" set value {properties:[{name:"textures",value:""}]}
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:profile".properties[0].value set from storage main:custom_head book_page

# Verify texture was set
execute in minecraft:overworld unless data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile".properties[0].value run function main:mechanic/custom_head/sculpt_cancel
execute in minecraft:overworld unless data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile".properties[0].value run return 0
execute in minecraft:overworld if data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile"{properties:[{value:""}]} run function main:mechanic/custom_head/sculpt_cancel
execute in minecraft:overworld if data block 0 319 0 Items[{Slot:0b}].components."minecraft:profile"{properties:[{value:""}]} run return 0

# 8. Apply custom name
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name" set value {text:"Custom Head",color:"gold",italic:false}
execute if data storage main:custom_head head_name unless data storage main:custom_head {head_name:""} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name".text set from storage main:custom_head head_name

# 9. Clean old flags and mark head_applied
execute in minecraft:overworld run data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:lore"
execute in minecraft:overworld run data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".can_transform
execute in minecraft:overworld run data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".decorative_head
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".head_applied set value 1b

# 10. Transfer transformed head back to player
execute if items entity @s weapon.mainhand player_head in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 319 0 container.0
execute unless items entity @s weapon.mainhand player_head in minecraft:overworld run item replace entity @s weapon.offhand from block 0 319 0 container.0
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air

# 11. Audiovisual feedback
playsound minecraft:ui.stonecutter.take_result player @s ~ ~ ~ 1 1
playsound minecraft:entity.villager.work_librarian player @s ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 15 normal
title @s actionbar [{"text":"[Vanilla Enriched] ","color":"gold","bold":true},{"text":"Custom Head Created!","color":"green"}]
