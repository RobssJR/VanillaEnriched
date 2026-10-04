function main:item/stat_book/sort_all
execute as @e[type=marker,tag=enriched.lectern] at @s run function main:item/stat_book/update_book
