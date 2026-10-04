execute store result score #sec vplus_math run data get block ~ ~ ~ Book.components."minecraft:custom_data".secret

scoreboard players add #sec vplus_math 1
execute if score #sec vplus_math matches 3.. run scoreboard players set #sec vplus_math 0
execute store result block ~ ~ ~ Book.components."minecraft:custom_data".secret int 1 run scoreboard players get #sec vplus_math

function main:item/stat_book/update_book

execute if score #sec vplus_math matches 0 run title @s actionbar [{fallback:"Secret Mode: No secrets.",translate:"enriched.secret.default",color:"green"}]
execute if score #sec vplus_math matches 1 run title @s actionbar [{fallback:"Secret Mode: Names hidden.",translate:"enriched.secret.names",color:"yellow"}]
execute if score #sec vplus_math matches 2 run title @s actionbar [{fallback:"Secret Mode: Scores hidden.",translate:"enriched.secret.scores",color:"aqua"}]
