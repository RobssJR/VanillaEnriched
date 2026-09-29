data remove storage vplus:macro compass_lore
data modify storage vplus:macro compass_lore.x set value 0
data modify storage vplus:macro compass_lore.y set value 0
data modify storage vplus:macro compass_lore.z set value 0
data modify storage vplus:macro compass_lore.dim set value "Unknown"

scoreboard players set .is_lodestone vplus_math 0
execute if items entity @s weapon.mainhand minecraft:compass if data entity @s SelectedItem.components."minecraft:lodestone_tracker" unless data entity @s SelectedItem.components."minecraft:custom_data".vplus_lore store success score .is_lodestone vplus_math run data modify storage vplus:macro compass_lore.target set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target
execute if score .is_lodestone vplus_math matches 0 if items entity @s weapon.offhand minecraft:compass if data entity @s equipment.offhand.components."minecraft:lodestone_tracker" unless data entity @s equipment.offhand.components."minecraft:custom_data".vplus_lore store success score .is_lodestone vplus_math run data modify storage vplus:macro compass_lore.target set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target

execute if score .is_lodestone vplus_math matches 0 run return 0

execute store result storage vplus:macro compass_lore.x int 1 run data get storage vplus:macro compass_lore.target.pos[0]
execute store result storage vplus:macro compass_lore.y int 1 run data get storage vplus:macro compass_lore.target.pos[1]
execute store result storage vplus:macro compass_lore.z int 1 run data get storage vplus:macro compass_lore.target.pos[2]

data modify storage vplus:macro compass_lore.dim set from storage vplus:macro compass_lore.target.dimension
execute if data storage vplus:macro compass_lore{dim:"minecraft:overworld"} run data modify storage vplus:macro compass_lore.dim set value "Overworld"
execute if data storage vplus:macro compass_lore{dim:"minecraft:the_nether"} run data modify storage vplus:macro compass_lore.dim set value "Nether"
execute if data storage vplus:macro compass_lore{dim:"minecraft:the_end"} run data modify storage vplus:macro compass_lore.dim set value "The End"

function main:item/compass/apply_compass_lore with storage vplus:macro compass_lore
