# Extract player block coordinates and set as wander_target
data modify storage main:temp target set value [I;0,0,0]
execute store result storage main:temp target[0] int 1 run data get entity @p[tag=main.holds_emerald_block] Pos[0]
execute store result storage main:temp target[1] int 1 run data get entity @p[tag=main.holds_emerald_block] Pos[1]
execute store result storage main:temp target[2] int 1 run data get entity @p[tag=main.holds_emerald_block] Pos[2]
data modify entity @s wander_target set from storage main:temp target
