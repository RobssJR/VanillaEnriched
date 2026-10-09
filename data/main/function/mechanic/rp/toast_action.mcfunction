# ==============================================================================
# Roleplay Mechanic: Tavern Toast (O Brinde na Taverna) - Action
# Context: as @s at @s (Player initiating toast)
# ==============================================================================

# Prevent duplicate execution if @s is already in cooldown (e.g. toasted in the same tick)
execute if score @s vp_toast_cd matches 1.. run return 0

# Identify partner within 2.5 blocks (another player or a singleplayer test dummy)
tag @e[tag=vp_toast_partner] remove vp_toast_partner
execute at @s as @p[tag=vp_toast_ready,distance=0.1..2.5] run tag @s add vp_toast_partner
execute unless entity @e[tag=vp_toast_partner] at @s as @e[type=armor_stand,tag=vp_toast_dummy,distance=0.1..2.5,limit=1] run tag @s add vp_toast_partner

# Sound effects:
# Prominent crystal/glass clink (cheers!)
execute at @s run playsound minecraft:block.note_block.chime player @a ~ ~1.2 ~ 1.2 1.6
execute at @s run playsound minecraft:block.amethyst_block.hit player @a ~ ~1.2 ~ 0.8 1.5
execute at @s run playsound minecraft:block.glass.hit player @a ~ ~1.2 ~ 1.5 1.4
# Subtle tavern post-toast burp
execute at @s run playsound minecraft:entity.player.burp player @a ~ ~1.2 ~ 0.35 0.9

# Particle effect:
# Between players/dummy if partner is present
execute if entity @e[tag=vp_toast_partner] at @s facing entity @e[tag=vp_toast_partner,limit=1] eyes positioned ^ ^1.1 ^0.8 run particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 0 10
# In front of player if executing standalone
execute unless entity @e[tag=vp_toast_partner] at @s positioned ^ ^1.1 ^0.8 run particle minecraft:happy_villager ~ ~ ~ 0.25 0.25 0.25 0 10

# Set 40 ticks (2 seconds) cooldown for participants
scoreboard players set @s vp_toast_cd 40
execute as @a[tag=vp_toast_partner] run scoreboard players set @s vp_toast_cd 40

# Cleanup tags
tag @s remove vp_toast_ready
execute as @a[tag=vp_toast_partner] run tag @s remove vp_toast_ready
tag @e[tag=vp_toast_partner] remove vp_toast_partner
