# 1. Anti-Desync (Chunkloader Protection)
# Time only advances if at least one player is online
# Uses modern gamerule advance_time syntax
execute store result score .doDaylight vplus_state run gamerule advance_time
execute if entity @a if score .doDaylight vplus_state matches 0 run time add 1

# 2. Global Time Calculation (Moved from clock)
function main:items/clock/time_calc

# 3. Wall Clocks Update
# 1-Second Global Timer (20 ticks) used across periodic 1s systems
scoreboard players add .tick_20t vplus_math 1
execute if score .tick_20t vplus_math matches 20.. run scoreboard players set .tick_20t vplus_math 0

# Scan for new wall clocks every 20 ticks (1 second)
execute if score .tick_20t vplus_math matches 0 run function main:items/clock/wallclock_scan

# Update wall clocks text when minute changes
execute unless score .minute vplus_math = .last_minute vplus_math run function main:items/clock/wallclock_update
scoreboard players operation .last_minute vplus_math = .minute vplus_math

# 4. Player Interactions (Sneaking)
execute as @a[scores={vplus_sneak=1..}] run function main:player/sneak

# 5. Colored Names (Anvil Color System - Throttled every 4 ticks for performance)
scoreboard players add .color_timer vplus_math 1
execute if score .color_timer vplus_math matches 4.. run scoreboard players set .color_timer vplus_math 0
execute if score .color_timer vplus_math matches 0 as @a if items entity @s weapon.mainhand *[minecraft:custom_name] run function main:items/colored_names/check_hand_main
execute if score .color_timer vplus_math matches 0 as @a if items entity @s weapon.offhand *[minecraft:custom_name] run function main:items/colored_names/check_hand_off
execute as @e[type=item,tag=!color_checked] run function main:items/colored_names/check_item

# 6. Auto-Compass Lore
execute as @a run function main:items/compass/check_compass_lore

# 7. Invisible Item Frames
function main:items/invisible_frame/tick

# 8. Custom Decorative Player Heads (Throttled every 4 ticks)
execute if score .color_timer vplus_math matches 0 as @a run function main:items/custom_head/check_player
execute if score .color_timer vplus_math matches 0 as @e[type=item] if items entity @s contents player_head[!custom_data~{head_applied:1b}] run function main:items/custom_head/check_dropped

# 9. Roleplay: Coin Flip ("Cara ou Coroa")
function main:items/coin/coin_tick

# 10. Sulfur Cube Mob (Ocean Vacuum & Elemental Variants)
function main:mobs/sulfur_cube/tick

# 11. Tool Statistics Lore Tracking (Renamed items Stat-Trak)
function main:items/stats/tick

# Reset roleplay sneak score for all players at the end of the tick loop
scoreboard players set @a vp_sneak 0
