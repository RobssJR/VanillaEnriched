# Extract player's main hand item to storage
data modify storage main:mechanic/colored_names/temp hand_item set from entity @s SelectedItem

# Extract the current custom name
data modify storage main:mechanic/colored_names/temp current_name set from storage main:mechanic/colored_names/temp hand_item.components."minecraft:custom_name"

# Ensure custom_data component exists in storage
data modify storage main:mechanic/colored_names/temp hand_item.components."minecraft:custom_data" merge value {}

# Attempt to update color_last_name. If it returns 0, the name was exactly the same as before!
execute store success storage main:mechanic/colored_names/temp changed byte 1 run data modify storage main:mechanic/colored_names/temp hand_item.components."minecraft:custom_data".color_last_name set from storage main:mechanic/colored_names/temp current_name

# If identical (0), it has already been processed or checked. Stop here.
execute if data storage main:mechanic/colored_names/temp {changed: 0b} run return 0

# It's a new or modified name! Transfer to a temporary item entity to apply colors
summon item ~ ~ ~ {Tags:["color_anvil_hand"],PickupDelay:32767s,Item:{id:"minecraft:stone",count:1}}
item replace entity @e[type=item,tag=color_anvil_hand,limit=1] contents from entity @s weapon.mainhand

# Parse the colors
execute as @e[type=item,tag=color_anvil_hand,limit=1] run function main:mechanic/colored_names/parse_item_components

# Update the item's custom_data with the final custom_name so it doesn't loop
execute as @e[type=item,tag=color_anvil_hand,limit=1] run data modify entity @s Item.components."minecraft:custom_data" merge value {}
execute as @e[type=item,tag=color_anvil_hand,limit=1] run data modify entity @s Item.components."minecraft:custom_data".color_last_name set from entity @s Item.components."minecraft:custom_name"

# Copy back to the player's mainhand and clean up
item replace entity @s weapon.mainhand from entity @e[type=item,tag=color_anvil_hand,limit=1] contents
kill @e[type=item,tag=color_anvil_hand]
