tag @s add vplus_wc
# Summon text display shifted UP and FORWARD using local coordinates (^ ^ ^) based on the Item Frame's facing direction. Billboard removed so it stays flat!
execute at @s run summon text_display ^ ^0.38 ^0.12 {Tags:["vplus_wc_text"],background:0,text:{text:""},transformation:[0.6f,0.0f,0.0f,0.0f,0.0f,0.6f,0.0f,0.0f,0.0f,0.0f,0.6f,0.0f,0.0f,0.0f,0.0f,1.0f]}
# Copy the item frame's exact rotation so it faces the same way as the wall
execute at @s run data modify entity @e[type=text_display,tag=vplus_wc_text,distance=..1,limit=1,sort=nearest] Rotation set from entity @s Rotation
# Immediately update it
execute as @e[type=text_display,tag=vplus_wc_text,distance=..1,limit=1,sort=nearest] run function main:item/clock/wallclock_update
