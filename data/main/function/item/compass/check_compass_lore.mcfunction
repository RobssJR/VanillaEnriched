# Check mainhand (Only process if it's a compass, has lodestone tracker, and has no v2 lore yet)
execute if items entity @s weapon.mainhand minecraft:compass if data entity @s SelectedItem.components."minecraft:lodestone_tracker" unless data entity @s SelectedItem.components."minecraft:custom_data".vplus_lore_v2 run function main:item/compass/process_compass_lore

# Check offhand (Only process if it's a compass, has lodestone tracker, and has no v2 lore yet)
execute if items entity @s weapon.offhand minecraft:compass if data entity @s Inventory[{Slot:-106b}].components."minecraft:lodestone_tracker" unless data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".vplus_lore_v2 run function main:item/compass/process_compass_lore
