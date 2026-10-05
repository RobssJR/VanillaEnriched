# Reset prior work penalty (repair_cost) across all player equipment and inventory slots
# Ensures that renaming items always costs exactly 1 XP level and items never become "Too Expensive"

# Equipment slots (Hands and Armor)
item modify entity @s weapon.mainhand main:reset_repair_cost
item modify entity @s weapon.offhand main:reset_repair_cost
item modify entity @s armor.head main:reset_repair_cost
item modify entity @s armor.chest main:reset_repair_cost
item modify entity @s armor.legs main:reset_repair_cost
item modify entity @s armor.feet main:reset_repair_cost

# Hotbar slots (0 - 8)
item modify entity @s container.0 main:reset_repair_cost
item modify entity @s container.1 main:reset_repair_cost
item modify entity @s container.2 main:reset_repair_cost
item modify entity @s container.3 main:reset_repair_cost
item modify entity @s container.4 main:reset_repair_cost
item modify entity @s container.5 main:reset_repair_cost
item modify entity @s container.6 main:reset_repair_cost
item modify entity @s container.7 main:reset_repair_cost
item modify entity @s container.8 main:reset_repair_cost

# Main Inventory slots (9 - 35)
item modify entity @s container.9 main:reset_repair_cost
item modify entity @s container.10 main:reset_repair_cost
item modify entity @s container.11 main:reset_repair_cost
item modify entity @s container.12 main:reset_repair_cost
item modify entity @s container.13 main:reset_repair_cost
item modify entity @s container.14 main:reset_repair_cost
item modify entity @s container.15 main:reset_repair_cost
item modify entity @s container.16 main:reset_repair_cost
item modify entity @s container.17 main:reset_repair_cost
item modify entity @s container.18 main:reset_repair_cost
item modify entity @s container.19 main:reset_repair_cost
item modify entity @s container.20 main:reset_repair_cost
item modify entity @s container.21 main:reset_repair_cost
item modify entity @s container.22 main:reset_repair_cost
item modify entity @s container.23 main:reset_repair_cost
item modify entity @s container.24 main:reset_repair_cost
item modify entity @s container.25 main:reset_repair_cost
item modify entity @s container.26 main:reset_repair_cost
item modify entity @s container.27 main:reset_repair_cost
item modify entity @s container.28 main:reset_repair_cost
item modify entity @s container.29 main:reset_repair_cost
item modify entity @s container.30 main:reset_repair_cost
item modify entity @s container.31 main:reset_repair_cost
item modify entity @s container.32 main:reset_repair_cost
item modify entity @s container.33 main:reset_repair_cost
item modify entity @s container.34 main:reset_repair_cost
item modify entity @s container.35 main:reset_repair_cost
