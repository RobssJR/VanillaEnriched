# 1. Apply profile component (no invalid id field)
data modify entity @s Item.components."minecraft:profile" set value {properties:[{name:"textures",value:""}]}
data modify entity @s Item.components."minecraft:profile".properties[0].value set from storage main:custom_head book_page

# 2. Apply custom name if provided on page 2, otherwise default to "Custom Head"
execute if data storage main:custom_head head_name unless data storage main:custom_head {head_name:""} run data modify entity @s Item.components."minecraft:custom_name" set value {text:"",color:"gold",italic:false}
execute if data storage main:custom_head head_name unless data storage main:custom_head {head_name:""} run data modify entity @s Item.components."minecraft:custom_name".text set from storage main:custom_head head_name

execute unless data storage main:custom_head head_name run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Custom Head",color:"gold",italic:false}
execute if data storage main:custom_head {head_name:""} run data modify entity @s Item.components."minecraft:custom_name" set value {text:"Custom Head",color:"gold",italic:false}

# 3. Remove transformation and crafting lore flags, and mark head_applied
data remove entity @s Item.components."minecraft:custom_data".can_transform
data remove entity @s Item.components."minecraft:custom_data".decorative_head
data remove entity @s Item.components."minecraft:lore"
data modify entity @s Item.components."minecraft:custom_data".head_applied set value 1b

# 4. Audiovisual feedback
execute at @s run playsound minecraft:ui.stonecutter.take_result block @a ~ ~ ~ 1 1
execute at @s run playsound minecraft:entity.villager.work_librarian block @a ~ ~ ~ 1 1
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.4 0.4 1 15 normal
