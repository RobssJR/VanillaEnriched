# ==============================================================================
# Roleplay Mechanic: Tavern Toast (O Brinde na Taverna) - Tick Loop
# Executed every tick
# ==============================================================================

# Ensure newly joined players have vp_toast_cd initialized
scoreboard players add @a vp_toast_cd 0

# 1. Reduce cooldown for all players on cooldown
execute as @a[scores={vp_toast_cd=1..}] run scoreboard players remove @s vp_toast_cd 1

# 2. Filter players who just sneaked (vp_sneak == 1) and are not on cooldown (vp_toast_cd == 0)
# Check if holding minecraft:honey_bottle in mainhand or offhand using 1.21.2 'if items'
tag @a remove vp_toast_ready
execute as @a[scores={vp_sneak=1,vp_toast_cd=0}] if items entity @s weapon.mainhand minecraft:honey_bottle run tag @s add vp_toast_ready
execute as @a[scores={vp_sneak=1,vp_toast_cd=0}] if items entity @s weapon.offhand minecraft:honey_bottle run tag @s add vp_toast_ready

# 3. Check for another sneaking player (or singleplayer test dummy) within 2.5 blocks
execute as @a[tag=vp_toast_ready] at @s if entity @a[tag=vp_toast_ready,distance=0.1..2.5] run function main:mechanic/rp/toast_action
execute as @a[tag=vp_toast_ready] at @s if entity @e[type=armor_stand,tag=vp_toast_dummy,distance=0.1..2.5] run function main:mechanic/rp/toast_action

# Cleanup ready tags
tag @a[tag=vp_toast_ready] remove vp_toast_ready
