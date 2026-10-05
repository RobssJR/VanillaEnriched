# Set custom name
data modify entity @s Item.components."minecraft:custom_name" set value '{"text":"Burn Pot","color":"gold","underlined":true,"bold":true,"italic":false}'

# Set lore
data modify entity @s Item.components."minecraft:lore" set value [{text:"Custom Head ID: 129856",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}]

# Set textures profile (requires id array in 1.20.5+ / 1.21)
data modify entity @s Item.components."minecraft:profile" set value {id:[I;129856,0,0,129856],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzYzY2JmZDhkN2Q1ZWE1Mzc0Njc5MzljMjNiOTQzMWM3YTQ5Njg3MDUwN2UzMDhkYzI4NGVmNWNjMTU1ZGE1YyJ9fX0="}]}

# Remove flags
data remove entity @s Item.components."minecraft:custom_data".can_transform
data remove entity @s Item.components."minecraft:custom_data".decorative_head

# Audiovisual feedback
execute at @s run playsound minecraft:block.enchantment_table.use block @a ~ ~ ~ 1 1.2
execute at @s run playsound minecraft:entity.player.levelup block @a ~ ~ ~ 0.5 1.5
execute at @s run particle minecraft:happy_villager ~ ~0.5 ~ 0.4 0.4 0.4 1 12 normal
