# Check if player switched held slots while actions are pending
execute store result score @s ve_stat_slot run data get entity @s SelectedItemSlot
execute unless score @s ve_stat_slot = @s ve_stat_last_slot if score @s ve_stat_blocks matches 1.. run function main:items/stats/flush_blocks
scoreboard players operation @s ve_stat_last_slot = @s ve_stat_slot
