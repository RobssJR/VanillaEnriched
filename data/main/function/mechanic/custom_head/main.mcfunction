# Check all hotbar slots
execute if items entity @s hotbar.0 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.0"}
execute if items entity @s hotbar.1 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.1"}
execute if items entity @s hotbar.2 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.2"}
execute if items entity @s hotbar.3 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.3"}
execute if items entity @s hotbar.4 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.4"}
execute if items entity @s hotbar.5 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.5"}
execute if items entity @s hotbar.6 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.6"}
execute if items entity @s hotbar.7 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.7"}
execute if items entity @s hotbar.8 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"hotbar.8"}

# Check all main inventory slots
execute if items entity @s inventory.0 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.0"}
execute if items entity @s inventory.1 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.1"}
execute if items entity @s inventory.2 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.2"}
execute if items entity @s inventory.3 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.3"}
execute if items entity @s inventory.4 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.4"}
execute if items entity @s inventory.5 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.5"}
execute if items entity @s inventory.6 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.6"}
execute if items entity @s inventory.7 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.7"}
execute if items entity @s inventory.8 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.8"}
execute if items entity @s inventory.9 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.9"}
execute if items entity @s inventory.10 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.10"}
execute if items entity @s inventory.11 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.11"}
execute if items entity @s inventory.12 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.12"}
execute if items entity @s inventory.13 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.13"}
execute if items entity @s inventory.14 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.14"}
execute if items entity @s inventory.15 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.15"}
execute if items entity @s inventory.16 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.16"}
execute if items entity @s inventory.17 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.17"}
execute if items entity @s inventory.18 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.18"}
execute if items entity @s inventory.19 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.19"}
execute if items entity @s inventory.20 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.20"}
execute if items entity @s inventory.21 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.21"}
execute if items entity @s inventory.22 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.22"}
execute if items entity @s inventory.23 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.23"}
execute if items entity @s inventory.24 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.24"}
execute if items entity @s inventory.25 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.25"}
execute if items entity @s inventory.26 player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"inventory.26"}

# Check offhand
execute if items entity @s weapon.offhand player_head[custom_data~{can_transform:"1b"},custom_name] run function main:mechanic/custom_head/process_slot {slot:"weapon.offhand"}

# Revoke advancement so it can trigger again
advancement revoke @s only main:mechanic/custom_head/inventory_changed
