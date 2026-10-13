# Clean up lectern markers if lectern block was removed
execute as @e[type=marker,tag=enriched.lectern] at @s unless block ~ ~ ~ minecraft:lectern run kill @s
