# 1. Generate unique UUID for client texture caching
execute store result storage main:custom_head uuid[0] int 1 run random value 1..2147483647
execute store result storage main:custom_head uuid[1] int 1 run random value 1..2147483647
execute store result storage main:custom_head uuid[2] int 1 run random value 1..2147483647
execute store result storage main:custom_head uuid[3] int 1 run random value 1..2147483647

# 2. Apply profile component
data modify entity @s Item.components."minecraft:profile" set value {properties:[{name:"textures",value:""}]}
data modify entity @s Item.components."minecraft:profile".id set from storage main:custom_head uuid
data modify entity @s Item.components."minecraft:profile".properties[0].value set from storage main:custom_head book_page

# 3. Apply custom name if provided on page 2, otherwise default to "Custom Head"
execute if data storage main:custom_head head_name unless data storage main:custom_head {head_name:""} run function main:mechanic/custom_head/set_name_macro_dropped with storage main:custom_head
execute unless data storage main:custom_head head_name run data modify entity @s Item.components."minecraft:custom_name" set value '{"text":"Custom Head","color":"gold","italic":false}'
execute if data storage main:custom_head {head_name:""} run data modify entity @s Item.components."minecraft:custom_name" set value '{"text":"Custom Head","color":"gold","italic":false}'

# 4. Remove transformation and crafting lore flags
data remove entity @s Item.components."minecraft:custom_data".can_transform
data remove entity @s Item.components."minecraft:custom_data".decorative_head
data remove entity @s Item.components."minecraft:lore"

# 5. Audiovisual feedback
execute at @s run playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 1.5
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.4 0.4 1 15 normal
