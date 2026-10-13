execute in minecraft:overworld if items entity @s weapon.mainhand player_head run item replace entity @s weapon.mainhand from block 0 319 0 container.0
execute in minecraft:overworld unless items entity @s weapon.mainhand player_head if items entity @s weapon.offhand player_head run item replace entity @s weapon.offhand from block 0 319 0 container.0
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air
