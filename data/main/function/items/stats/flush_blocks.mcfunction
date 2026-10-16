# Ensure player is still holding a custom-named item
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run scoreboard players set @s ve_stat_blocks 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run return 0

# Commit accumulated usage to item based on type
execute if items entity @s weapon.mainhand #main:mining_tools run function main:items/stats/commit_mining
execute if items entity @s weapon.mainhand #main:axes run function main:items/stats/commit_axe
execute if items entity @s weapon.mainhand #main:shears run function main:items/stats/commit_shears
execute if items entity @s weapon.mainhand #main:flint run function main:items/stats/commit_flint
execute if items entity @s weapon.mainhand #main:brush run function main:items/stats/commit_brush
execute if items entity @s weapon.mainhand #main:fishing_rod run function main:items/stats/commit_fishing

# Reset pending scores
scoreboard players set @s ve_stat_blocks 0
scoreboard players set @s ve_stat_timer 0
