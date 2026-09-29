# Revoke advancement so it triggers every time the player boards a boat
advancement revoke @s only main:mechanic/boat/boarding_boat

# Water splash effects on entering a boat
execute as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^0.75 ^.5 ^1 .15 .15 .15 1 8
execute as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^-0.75 ^.5 ^1 .15 .15 .15 1 8
execute as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:splash ^ ^.4 ^1 .2 .1 .2 1 12
execute as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run particle minecraft:bubble ^ ^.2 ^1 .3 .2 .3 0.1 15
execute as @s on vehicle if entity @s[type=#minecraft:boat] if block ~ ~-.1 ~ water at @s run playsound entity.player.splash master @a ~ ~ ~ 0.6 1.2
