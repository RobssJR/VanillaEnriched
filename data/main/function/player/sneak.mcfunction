# Compass: Navigation Display
execute if items entity @s weapon.mainhand minecraft:compass run function main:items/compass/compass
execute if items entity @s weapon.offhand minecraft:compass unless items entity @s weapon.mainhand minecraft:compass run function main:items/compass/compass

# Clock: Time/Date Display
execute if items entity @s weapon.mainhand minecraft:clock run function main:items/clock/clock
execute if items entity @s weapon.offhand minecraft:clock unless items entity @s weapon.mainhand minecraft:clock run function main:items/clock/clock

# Reset sneak trigger to prevent command spam
scoreboard players set @s vplus_sneak 0