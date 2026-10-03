tag @s add color_checked

# Check for custom name on dropped item
execute if items entity @s contents *[minecraft:custom_name] run data modify storage main:mechanic/colored_names/temp current_name set from entity @s Item.components."minecraft:custom_name"
execute if items entity @s contents *[minecraft:custom_name] run function main:mechanic/colored_names/parse_item_components
execute if items entity @s contents *[minecraft:custom_name] run function main:mechanic/colored_names/apply_components
