# ==============================================================================
# Roleplay Mechanic: Coin Flip (Cara ou Coroa) - Action
# Context: as @s at @s (Player flipping the coin)
# ==============================================================================

# Destroy the dropped gold nugget entity to prevent duplication
execute as @e[type=item,distance=..2,limit=1,sort=nearest] if items entity @s contents minecraft:gold_nugget run kill @s

# Return the gold nugget back to the player
give @s minecraft:gold_nugget 1

# Sound of spinning coin in the air
playsound minecraft:block.chain.place player @a ~ ~1.2 ~ 1.0 1.8

# Native roll from 1 to 2 stored in vp_temp
execute store result score @s vp_temp run random value 1..2

# Announce outcome to all players within 15 blocks
execute if score @s vp_temp matches 1 run tellraw @a[distance=..15] [{"text":"[Moeda] ","color":"gold","bold":true},{"selector":"@s","color":"yellow"},{"text":" jogou uma moeda e deu ","color":"gray"},{"text":"CARA","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if score @s vp_temp matches 2 run tellraw @a[distance=..15] [{"text":"[Moeda] ","color":"gold","bold":true},{"selector":"@s","color":"yellow"},{"text":" jogou uma moeda e deu ","color":"gray"},{"text":"COROA","color":"yellow","bold":true},{"text":"!","color":"gray"}]
