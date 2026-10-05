# 1. Quick bail if player carries no player_head in inventory
execute unless items entity @s hotbar.* minecraft:player_head unless items entity @s inventory.* minecraft:player_head unless items entity @s weapon.* minecraft:player_head run return 0

# 2. Run slot checks for anvil-renamed player heads
function main:mechanic/custom_head/main
