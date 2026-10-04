# Quick bail if player carries no player_head in inventory
execute unless items entity @s hotbar.* minecraft:player_head unless items entity @s inventory.* minecraft:player_head unless items entity @s weapon.* minecraft:player_head run return 0

# Run slot checks
function main:mechanic/custom_head/main
