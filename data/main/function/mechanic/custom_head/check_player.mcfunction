# Quick bail if player carries no player_head in hands or inventory
execute unless items entity @s weapon.* minecraft:player_head unless items entity @s container.* minecraft:player_head run return 0

# Check player's active hands
execute if items entity @s weapon.mainhand minecraft:player_head run function main:mechanic/custom_head/process_slot {slot:"weapon.mainhand"}
execute if items entity @s weapon.offhand minecraft:player_head run function main:mechanic/custom_head/process_slot {slot:"weapon.offhand"}

# Check inventory container slots if player still carries any player_head
execute if items entity @s container.* minecraft:player_head run function main:mechanic/custom_head/scan_container
