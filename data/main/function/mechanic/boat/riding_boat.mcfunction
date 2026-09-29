# Fast speed boating (distance >= 12 cm/tick)
execute if score @s boating matches 12.. as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^0.75 ^.4 ^1 .1 .1 .1 1 3
execute if score @s boating matches 12.. as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^-0.75 ^.4 ^1 .1 .1 .1 1 3
execute if score @s boating matches 12.. as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^ ^.4 ^-1.1 .25 .1 .25 1 8
execute if score @s boating matches 12.. as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:bubble ^-0.75 ^.4 ^-1 .1 .1 .1 0.1 3
execute if score @s boating matches 12.. as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:bubble ^0.75 ^.4 ^-1 .1 .1 .1 0.1 3

# Slow speed boating (distance 1..11 cm/tick)
execute if score @s boating matches 1..11 as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^0.75 ^.2 ^1 .1 .1 .1 0.1 1
execute if score @s boating matches 1..11 as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^-0.75 ^.2 ^1 .1 .1 .1 0.1 1

# Reset score so boat_one_cm accurately measures the next tick
scoreboard players set @s boating 0
