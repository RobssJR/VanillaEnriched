# 1. Check if linked tempted villager is still nearby (< 2.5m)
execute unless entity @e[type=villager,tag=main.tempted,distance=..2.5] run return run function main:mechanic/villager_follow/guide_despawn

# 2. Check if player holding emerald block is within 12 blocks
execute unless entity @p[tag=main.holds_emerald_block,distance=..12] run return run function main:mechanic/villager_follow/guide_despawn

# 3. Synchronize villager to guide's position and face player
execute at @s as @e[type=villager,tag=main.tempted,distance=..2.5,limit=1,sort=nearest] facing entity @p[tag=main.holds_emerald_block] eyes run tp @s ~ ~ ~ ~ ~

# 4. If within comfortable distance (<= 2.2 blocks), stop pathfinding and admire
execute if entity @p[tag=main.holds_emerald_block,distance=..2.2] run data remove entity @s wander_target
execute if entity @p[tag=main.holds_emerald_block,distance=..2.2] run function main:mechanic/villager_follow/near_player
execute if entity @p[tag=main.holds_emerald_block,distance=..2.2] run return 1

# 5. Pathfinding update timer (recalculate path every 4 ticks for agile, responsive tracking)
scoreboard players add @s vplus_math 1
execute if score @s vplus_math matches 4.. run scoreboard players set @s vplus_math 0
execute unless data entity @s wander_target run scoreboard players set @s vplus_math 0

# Only modify wander_target when timer triggers
execute if score @s vplus_math matches 0 run function main:mechanic/villager_follow/update_wander_target

# 6. Occasional follow particles
execute store result score #part vplus_math run random value 1..35
execute if score #part vplus_math matches 1 at @s run particle minecraft:happy_villager ~ ~2 ~ 0.2 0.2 0.2 0 1
