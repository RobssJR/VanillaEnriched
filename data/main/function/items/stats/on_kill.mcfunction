# Immediately revoke advancement so it can trigger on next kill
advancement revoke @s only main:items/stats/kill_entity

# Ensure held item is custom named
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run return 0

# Check if uninitialized tool/weapon
execute unless data entity @s SelectedItem.components."minecraft:custom_data".ve_tracked run function main:items/stats/check_init

# Route kill counting to weapon or axe
execute if items entity @s weapon.mainhand #main:weapons run function main:items/stats/commit_weapon_kill
execute if items entity @s weapon.mainhand #main:axes run function main:items/stats/commit_axe_kill
