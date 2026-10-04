# Opt-in trigger handling
execute if score autoOptIn enriched.settings matches 0 run scoreboard players enable @a enriched.optin
execute as @a[scores={enriched.optin=1..,enriched.optedin=1}] run function main:item/stat_book/trigger_optout
execute as @a[scores={enriched.optin=1..}] run function main:item/stat_book/trigger_optin

# Manual refresh triggers (1: lectern player is standing on, 2: 16-block radius)
execute if score refreshType enriched.settings matches 1..2 run scoreboard players enable @a enriched.update
execute if score refreshType enriched.settings matches 1 as @a[scores={enriched.update=1..}] at @s align xyz as @e[type=marker,dx=0,tag=enriched.lectern] at @s run function main:item/stat_book/update_book
execute if score refreshType enriched.settings matches 2 as @a[scores={enriched.update=1..}] at @s as @e[type=marker,distance=..16,tag=enriched.lectern] at @s run function main:item/stat_book/update_book
execute as @a[scores={enriched.update=1..}] run scoreboard players set @s enriched.update 0

# Secret mode trigger (toggles secrecy on lectern player is standing on)
execute if score allowSecret enriched.settings matches 1 run scoreboard players enable @a enriched.secret
execute if score allowSecret enriched.settings matches 1 as @a[scores={enriched.secret=1..}] at @s align xyz if entity @e[type=marker,dx=0,tag=enriched.lectern] positioned ~.5 ~.5 ~.5 run function main:item/stat_book/trigger_secret
execute as @a[scores={enriched.secret=1..}] run scoreboard players set @s enriched.secret 0

# Help trigger
scoreboard players enable @a enriched.help
execute as @a[scores={enriched.help=1..}] run function main:item/stat_book/trigger_help

# Clean up lectern markers if lectern block was removed
execute as @e[type=marker,tag=enriched.lectern] at @s unless block ~ ~ ~ minecraft:lectern run kill @s
