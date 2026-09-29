# Tag all Item Frames that have a clock
execute as @e[type=item_frame,tag=!vplus_wc] if data entity @s Item{id:"minecraft:clock"} run function main:item/clock/wallclock_init
execute as @e[type=glow_item_frame,tag=!vplus_wc] if data entity @s Item{id:"minecraft:clock"} run function main:item/clock/wallclock_init

# Remove text display if clock is removed
execute as @e[type=item_frame,tag=vplus_wc] unless data entity @s Item{id:"minecraft:clock"} run function main:item/clock/wallclock_remove
execute as @e[type=glow_item_frame,tag=vplus_wc] unless data entity @s Item{id:"minecraft:clock"} run function main:item/clock/wallclock_remove

# Remove ghost text displays if the item frame is destroyed completely
execute as @e[type=text_display,tag=vplus_wc_text] at @s unless entity @e[type=item_frame,distance=..1] unless entity @e[type=glow_item_frame,distance=..1] run kill @s
