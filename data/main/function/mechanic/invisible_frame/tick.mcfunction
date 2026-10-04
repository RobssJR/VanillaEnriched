# ==============================================================================
# TICK LOOP: INVISIBLE ITEM FRAMES (Minecraft 26.3)
# ==============================================================================

# 1. If the frame is empty and invisible, make it visible so players can locate it
execute as @e[tag=main.invisible_frame,nbt={Invisible:1b},nbt=!{Item:{}}] run data modify entity @s Invisible set value false

# 2. If the frame holds an item and is visible, make it invisible
execute as @e[tag=main.invisible_frame,nbt={Invisible:0b},nbt={Item:{}}] run data modify entity @s Invisible set value true

# 3. Ensure every invisible frame has a tracking marker
execute as @e[tag=main.invisible_frame] at @s unless entity @e[type=marker,tag=main.frame_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["main.frame_marker"]}

# 4. If the frame was broken/removed, marker restores enchanted item drop and kills itself
execute as @e[type=marker,tag=main.frame_marker] at @s unless entity @e[tag=main.invisible_frame,distance=..0.1] run function main:mechanic/invisible_frame/restore
