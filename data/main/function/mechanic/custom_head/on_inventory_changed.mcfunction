# Revoke advancement immediately so it can re-trigger on subsequent inventory updates
advancement revoke @s only main:mechanic/custom_head/inventory_changed

# Process heads across player's inventory
function main:mechanic/custom_head/check_player
