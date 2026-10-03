# Extract player's offhand item to storage (Minecraft 26.3+ equipment format)
data modify storage main:mechanic/colored_names/temp hand_item set from entity @s equipment.offhand

# Extract the current custom name
data modify storage main:mechanic/colored_names/temp current_name set from storage main:mechanic/colored_names/temp hand_item.components."minecraft:custom_name"

# Ensure custom_data component exists in storage
data modify storage main:mechanic/colored_names/temp hand_item.components."minecraft:custom_data" merge value {}

# Check if name is already processed (matches color_last_name)
execute store success storage main:mechanic/colored_names/temp changed byte 1 run data modify storage main:mechanic/colored_names/temp hand_item.components."minecraft:custom_data".color_last_name set from storage main:mechanic/colored_names/temp current_name

# If identical (0), it has already been processed or checked. Stop here.
execute if data storage main:mechanic/colored_names/temp {changed: 0b} run return 0

# Parse the name in storage (detects '&' and produces 'output')
function main:mechanic/colored_names/parse_item_components

# Ensure safe container block exists at 0 319 0 in overworld
execute in minecraft:overworld unless block 0 319 0 minecraft:barrel run setblock 0 319 0 minecraft:barrel keep

# 1. Transfer offhand item to safe container block (no entity summoned)
execute in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s weapon.offhand

# 2. Case A: An actual color or format code was converted
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name" set from storage main:mechanic/colored_names/temp output
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data" merge value {}
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".color_last_name set from storage main:mechanic/colored_names/temp output

# 3. Case B: Uncolored name - update color_last_name to avoid rechecking
execute if data storage main:mechanic/colored_names/temp {has_color: 0b} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data" merge value {}
execute if data storage main:mechanic/colored_names/temp {has_color: 0b} in minecraft:overworld run data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".color_last_name set from storage main:mechanic/colored_names/temp current_name

# 4. Transfer back to player's offhand and clear container slot
execute in minecraft:overworld run item replace entity @s weapon.offhand from block 0 319 0 container.0
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air

# 5. Visual and sound feedback (only if colors were converted)
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} at @s run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 1 10 normal
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} at @s run playsound block.smithing_table.use master @a ~ ~ ~ 1 1.5
