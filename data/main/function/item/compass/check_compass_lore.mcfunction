# Check mainhand (Only process if it's a compass, has lodestone tracker, and has no lore yet)
execute if items entity @s weapon.mainhand minecraft:compass if data entity @s SelectedItem.components."minecraft:lodestone_tracker" unless data entity @s SelectedItem.components."minecraft:custom_data".vplus_lore run function main:item/compass/process_compass_lore

# Check offhand (Only process if it's a compass, has lodestone tracker, and has no lore yet)
execute if items entity @s weapon.offhand minecraft:compass if data entity @s equipment.offhand.components."minecraft:lodestone_tracker" unless data entity @s equipment.offhand.components."minecraft:custom_data".vplus_lore run function main:item/compass/process_compass_lore
