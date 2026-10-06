# Release nearest tempted villager
execute as @e[type=villager,tag=main.tempted,distance=..2.5,limit=1,sort=nearest] at @s run function main:mechanic/villager_follow/release_one

# Despawn guide cleanly
tp @s ~ -1000 ~
kill @s
