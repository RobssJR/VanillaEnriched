function main:items/stat_book/sort_all
execute as @e[type=marker,tag=enriched.lectern] at @s run function main:items/stat_book/update_book
