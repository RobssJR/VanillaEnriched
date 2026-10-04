# Set custom name
data modify entity @s Item.components."minecraft:custom_name" set value {text:"Giant Honey Dipper",color:"gold",underlined:true,bold:true,italic:false}

# Set lore
data modify entity @s Item.components."minecraft:lore" set value [{text:"Custom Head ID: 129904",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}]

# Set textures profile
data modify entity @s Item.components."minecraft:profile" set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkY2ExZDdkN2UyNzEzMmE4MDVhZjNhNWY5ZDNmMjliNzhmMjJlMzFlYjk3ZGI0MDZjZDM3YmUwZTJkNmU3NyJ9fX0="}]}

# Remove can_transform flag
data remove entity @s Item.components."minecraft:custom_data".can_transform

# Audiovisual feedback
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.3 0.3 1 10 normal
