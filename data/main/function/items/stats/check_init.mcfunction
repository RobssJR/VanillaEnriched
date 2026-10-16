# Ensure safe container block exists at 0 319 0
execute in minecraft:overworld unless block 0 319 0 minecraft:barrel run setblock 0 319 0 minecraft:barrel keep

# Route initialization based on tool category
execute if items entity @s weapon.mainhand #main:axes run function main:items/stats/init_axe
execute if items entity @s weapon.mainhand #main:mining_tools run function main:items/stats/init_mining
execute if items entity @s weapon.mainhand #main:weapons run function main:items/stats/init_weapon

execute if items entity @s weapon.mainhand #main:shears run function main:items/stats/init_shears
execute if items entity @s weapon.mainhand #main:flint run function main:items/stats/init_flint
execute if items entity @s weapon.mainhand #main:brush run function main:items/stats/init_brush
execute if items entity @s weapon.mainhand #main:fishing_rod run function main:items/stats/init_fishing
execute if items entity @s weapon.mainhand #main:compass run function main:items/stats/init_compass
execute if items entity @s weapon.mainhand #main:clock run function main:items/stats/init_clock
