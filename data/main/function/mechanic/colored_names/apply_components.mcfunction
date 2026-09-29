# Only apply custom_name, particles and sounds if an actual color/format code was converted!
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} run data modify entity @s Item.components merge value {}
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} run data modify entity @s Item.components."minecraft:custom_name" set from storage main:mechanic/colored_names/temp output

execute if data storage main:mechanic/colored_names/temp {has_color: 1b} run particle happy_villager ~ ~0.5 ~ 0.3 0.3 0.3 1 10 normal
execute if data storage main:mechanic/colored_names/temp {has_color: 1b} run playsound block.smithing_table.use master @a ~ ~ ~ 1 1.5
