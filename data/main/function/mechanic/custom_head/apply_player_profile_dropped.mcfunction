# Macro: receives $(name)

# Set profile component to target player username
$data modify entity @s Item.components."minecraft:profile" set value {name:"$(name)"}

# Set clean custom name without default anvil italics
$data modify entity @s Item.components."minecraft:custom_name" set value {text:"$(name)",italic:false}

# Remove placeholder crafting instructions lore
data remove entity @s Item.components."minecraft:lore"

# Remove can_transform flag so head is permanently resolved
data remove entity @s Item.components."minecraft:custom_data".can_transform

# Audiovisual feedback
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 0.5 1.5
particle minecraft:happy_villager ~ ~0.3 ~ 0.3 0.3 0.3 1 12 normal
