# Revoke advancement immediately so it can trigger again on next use
advancement revoke @s only main:item/stat_book/open_lectern
scoreboard players set #found_lectern vplus_math 0

# Start raycast toward the lectern block (100 steps of 0.05m = 5m reach)
scoreboard players set #steps vplus_math 100
execute anchored eyes positioned ^ ^ ^ run function main:item/stat_book/lectern_ray

# Fallbacks: check lectern directly in front of the player (from eyes)
execute unless score #found_lectern vplus_math matches 1 at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found

# Fallbacks: check adjacent blocks around player
execute unless score #found_lectern vplus_math matches 1 at @s if block ~ ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s if block ~1 ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s if block ~-1 ~ ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s if block ~ ~ ~1 minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s if block ~ ~ ~-1 minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
execute unless score #found_lectern vplus_math matches 1 at @s if block ~ ~-1 ~ minecraft:lectern align xyz positioned ~.5 ~.5 ~.5 run function main:item/stat_book/lectern_found
