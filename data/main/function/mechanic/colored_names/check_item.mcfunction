tag @s add color_checked

# Check for custom name on dropped item
execute if items entity @s contents *[minecraft:custom_name] run function main:mechanic/colored_names/parse_item_components
