# Initialize core scoreboards
scoreboard objectives add vplus_math dummy
scoreboard objectives add vplus_state dummy
scoreboard objectives add vplus_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add vp_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add vp_drop_gold minecraft.dropped:minecraft.gold_nugget
scoreboard objectives add vp_temp dummy
scoreboard objectives add vp_water_sat dummy

scoreboard players set .paused vplus_state 0

# Mathematical Constants Initialization
scoreboard players set .60 vplus_math 60
scoreboard players set .1000 vplus_math 1000
scoreboard players set .24000 vplus_math 24000
scoreboard players set .28 vplus_math 28
scoreboard players set .112 vplus_math 112
scoreboard players set .-1 vplus_math -1
scoreboard players set .tick_20t vplus_math 0
scoreboard players set .last_minute vplus_math -1
scoreboard players set .color_timer vplus_math 0
scoreboard players set .rainbow_idx vplus_math 0

# Setup safe container block for item modification (safe, chunkloaded, at y=319)
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 319 0 minecraft:barrel keep
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air
execute in minecraft:overworld run item replace block 0 319 0 container.1 with minecraft:air

# Region System Initialization (Scoreboards & Scheduled Loops)
scoreboard objectives add vp_player_id dummy
schedule function main:mechanic/region/tracker_loop 20t replace
schedule function main:mechanic/region/clean_loop 100t replace

# Statistic Books Initialization
function main:item/stat_book/load

# Custom Head Recipes
recipe take @a minecraft:player_head
recipe give @a main:decorative_player_head

# Villager Follow Guide System Initialization
team add main.guide
team modify main.guide collisionRule never
execute as @e[type=wandering_trader,tag=main.guide] run kill @s
tag @e[type=villager,tag=main.tempted] remove main.tempted

# Notify players of successful load
tellraw @a {"text":"[Vanilla Enriched] Systems Successfully Loaded!","color":"green"}