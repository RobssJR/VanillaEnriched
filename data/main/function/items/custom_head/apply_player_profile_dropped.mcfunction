# 1. Set profile directly from custom_name
data modify entity @s Item.components."minecraft:profile" set from entity @s Item.components."minecraft:custom_name"
data modify entity @s Item.components."minecraft:profile" set from entity @s Item.components."minecraft:custom_name".text
execute if data entity @s Item.components."minecraft:profile".text run data modify entity @s Item.components."minecraft:profile".name set from entity @s Item.components."minecraft:profile".text
execute if data entity @s Item.components."minecraft:profile".text run data remove entity @s Item.components."minecraft:profile".text

# 2. Remove custom_name so head shows <Player>'s Head
data remove entity @s Item.components."minecraft:custom_name"

# 3. Remove placeholder crafting instructions lore
data remove entity @s Item.components."minecraft:lore"

# 4. Remove can_transform & decorative_head flags so head is permanently resolved
data remove entity @s Item.components."minecraft:custom_data".can_transform
data remove entity @s Item.components."minecraft:custom_data".decorative_head

# Audiovisual feedback
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.3 0.3 1 12 normal
