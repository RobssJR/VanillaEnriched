# Setup core scoreboards (pure survival, no player commands required)
scoreboard objectives add enriched.settings dummy
scoreboard objectives add enriched.optedin dummy

# Remove any legacy triggers from previous versions
scoreboard objectives remove enriched.optin
scoreboard objectives remove enriched.update
scoreboard objectives remove enriched.secret
scoreboard objectives remove enriched.help
scoreboard objectives remove enriched.stats

# Initialize all 76 player statistics (enriched.custom.jump, walk, deaths, etc.)
function main:item/stat_book/setup_custom_stats

# Setup automatic settings (all players tracked automatically, auto-refreshed)
scoreboard players set refreshType enriched.settings 0
scoreboard players set autoOptIn enriched.settings 1
scoreboard players set allowSecret enriched.settings 0

# Setup storage collections if not existing
execute store success score #s vplus_math if data storage enriched:tracking tracked
execute if score #s vplus_math matches 0 run data modify storage enriched:tracking tracked set value []
execute store success score #s vplus_math if data storage enriched:tracking storage
execute if score #s vplus_math matches 0 run data modify storage enriched:tracking storage set value []
# Ensure names storage is initialized
execute store success score #s vplus_math if data storage enriched:tracking names
execute if score #s vplus_math matches 0 run data modify storage enriched:tracking names set value []

scoreboard players set #needsSorting vplus_math 1

# Start periodic storage sync cycle
scoreboard players set #amt enriched.update 0
function main:item/stat_book/store_run

# Cleanup empty names in storage
function main:item/stat_book/store_cleanup_names

# Clean up any leftover orphan markers or temporary entities immediately
execute as @e[tag=enriched.lectern] at @s align xyz unless block ~ ~ ~ minecraft:lectern run kill @s
execute as @e[tag=enriched.name_fetch] run kill @s