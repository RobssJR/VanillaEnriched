# 1. Anti-Desync (Chunkloader Protection)
# O tempo so corre se houver algum jogador online
# Usa a sintaxe nova da 1.26+ (advance_time)
execute store result score .doDaylight vplus_state run gamerule advance_time
execute if entity @a if score .doDaylight vplus_state matches 0 run time add 1

# 2. Global Time Calculation (Moved from clock)
function main:item/clock/time_calc

# 3. Wall Clocks Update
# Scan for new wall clocks every 20 ticks (1 second)
scoreboard players add .wc_timer vplus_math 1
execute if score .wc_timer vplus_math matches 20.. run scoreboard players set .wc_timer vplus_math 0
execute if score .wc_timer vplus_math matches 0 run function main:item/clock/wallclock_scan

# Update wall clocks text when minute changes
execute unless score .minute vplus_math = .last_minute vplus_math run function main:item/clock/wallclock_update
scoreboard players operation .last_minute vplus_math = .minute vplus_math

# 4. Player Interactions (Sneaking)
execute as @a[scores={vplus_sneak=1..}] run function main:mechanic/player/sneak

# 5. Colored Names (Anvil Color System - Throttled every 4 ticks for performance)
scoreboard players add .color_timer vplus_math 1
execute if score .color_timer vplus_math matches 4.. run scoreboard players set .color_timer vplus_math 0
execute if score .color_timer vplus_math matches 0 as @a if items entity @s weapon.mainhand *[minecraft:custom_name] run function main:mechanic/colored_names/check_hand_main
execute if score .color_timer vplus_math matches 0 as @a if items entity @s weapon.offhand *[minecraft:custom_name] run function main:mechanic/colored_names/check_hand_off
execute as @e[type=item,tag=!color_checked] run function main:mechanic/colored_names/check_item

# 6. Auto-Compass Lore
execute as @a run function main:item/compass/check_compass_lore
