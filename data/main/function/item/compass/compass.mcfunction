# 1. Read player pos
execute as @s store result score .px vplus_math run data get entity @s Pos[0]
execute as @s store result score .pz vplus_math run data get entity @s Pos[2]

# 2. Extract Target Coordinates to Storage
data remove storage main:compass target
scoreboard players set .is_lodestone vplus_math 0

# Try Mainhand
execute as @s if items entity @s weapon.mainhand minecraft:compass store success score .is_lodestone vplus_math run data modify storage main:compass target set from entity @s SelectedItem.components."minecraft:lodestone_tracker".target

# Try Offhand (checks Slot -106b and equipment.offhand)
execute as @s if score .is_lodestone vplus_math matches 0 if items entity @s weapon.offhand minecraft:compass store success score .is_lodestone vplus_math run data modify storage main:compass target set from entity @s Inventory[{Slot:-106b}].components."minecraft:lodestone_tracker".target
execute as @s if score .is_lodestone vplus_math matches 0 if items entity @s weapon.offhand minecraft:compass store success score .is_lodestone vplus_math run data modify storage main:compass target set from entity @s equipment.offhand.components."minecraft:lodestone_tracker".target

# 3. Assign Math Variables
# If lodestone was found, read from unified storage
execute as @s if score .is_lodestone vplus_math matches 1 store result score .tx vplus_math run data get storage main:compass target.pos[0]
execute as @s if score .is_lodestone vplus_math matches 1 store result score .tz vplus_math run data get storage main:compass target.pos[2]

# If no lodestone was found, target is the bed spawn
execute as @s if score .is_lodestone vplus_math matches 0 store result score .tx vplus_math run data get entity @s SpawnX
execute as @s if score .is_lodestone vplus_math matches 0 store result score .tz vplus_math run data get entity @s SpawnZ

# 4. Calculate dx and dz
scoreboard players operation .dx vplus_math = .px vplus_math
scoreboard players operation .dx vplus_math -= .tx vplus_math
scoreboard players operation .dz vplus_math = .pz vplus_math
scoreboard players operation .dz vplus_math -= .tz vplus_math

# Absolute value
execute if score .dx vplus_math matches ..-1 run scoreboard players operation .dx vplus_math *= .-1 vplus_math
execute if score .dz vplus_math matches ..-1 run scoreboard players operation .dz vplus_math *= .-1 vplus_math

# Anti-overflow scaling (if distance > 30000 blocks)
scoreboard players set .scale vplus_math 1
execute if score .dx vplus_math matches 30000.. run scoreboard players set .scale vplus_math 10
execute if score .dz vplus_math matches 30000.. run scoreboard players set .scale vplus_math 10
execute if score .scale vplus_math matches 10 run scoreboard players operation .dx vplus_math /= .scale vplus_math
execute if score .scale vplus_math matches 10 run scoreboard players operation .dz vplus_math /= .scale vplus_math

# Square
scoreboard players operation .dx vplus_math *= .dx vplus_math
scoreboard players operation .dz vplus_math *= .dz vplus_math

# Sum and Sqrt
scoreboard players operation .sq vplus_math = .dx vplus_math
scoreboard players operation .sq vplus_math += .dz vplus_math
function main:backend/math/sqrt

# Rescale if needed
execute if score .scale vplus_math matches 10 run scoreboard players operation .sqrt vplus_math *= .scale vplus_math

# 5. Determine Facing Direction (8 Cardinal Directions)
execute if entity @s[y_rotation=-22..22] run data modify storage main:compass facing set value "South (S)"
execute if entity @s[y_rotation=23..67] run data modify storage main:compass facing set value "Southwest (SW)"
execute if entity @s[y_rotation=68..112] run data modify storage main:compass facing set value "West (W)"
execute if entity @s[y_rotation=113..157] run data modify storage main:compass facing set value "Northwest (NW)"
execute if entity @s[y_rotation=158..180] run data modify storage main:compass facing set value "North (N)"
execute if entity @s[y_rotation=-180..-158] run data modify storage main:compass facing set value "North (N)"
execute if entity @s[y_rotation=-157..-113] run data modify storage main:compass facing set value "Northeast (NE)"
execute if entity @s[y_rotation=-112..-68] run data modify storage main:compass facing set value "East (E)"
execute if entity @s[y_rotation=-67..-23] run data modify storage main:compass facing set value "Southeast (SE)"

# 6. Display Actionbar
# Standard Compass (Spawn)
execute if score .is_lodestone vplus_math matches 0 run title @s actionbar ["",{"text":"[Compass] ","color":"dark_red"},{"text":"X: ","color":"gray"},{"score":{"name":".px","objective":"vplus_math"},"color":"white"},{"text":" | Z: ","color":"gray"},{"score":{"name":".pz","objective":"vplus_math"},"color":"white"},{"text":" • ","color":"dark_gray"},{"nbt":"facing","storage":"main:compass","color":"aqua"},{"text":" • ","color":"dark_gray"},{"text":"Spawn: ","color":"gold"},{"score":{"name":".sqrt","objective":"vplus_math"},"color":"yellow"},{"text":"m","color":"gold"}]

# Lodestone Compass (Target)
execute if score .is_lodestone vplus_math matches 1 run title @s actionbar ["",{"text":"[Compass] ","color":"dark_purple"},{"text":"X: ","color":"gray"},{"score":{"name":".px","objective":"vplus_math"},"color":"white"},{"text":" | Z: ","color":"gray"},{"score":{"name":".pz","objective":"vplus_math"},"color":"white"},{"text":" • ","color":"dark_gray"},{"nbt":"facing","storage":"main:compass","color":"aqua"},{"text":" • ","color":"dark_gray"},{"text":"Target: ","color":"light_purple"},{"score":{"name":".sqrt","objective":"vplus_math"},"color":"white"},{"text":"m","color":"light_purple"}]

playsound item.spyglass.use master @s ~ ~ ~ 1 1.2
