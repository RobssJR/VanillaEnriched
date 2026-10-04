# 1. Ensure player has a unique ID to index storage in Multiplayer
execute unless score @s vp_player_id matches 1.. run scoreboard players add .next_id vplus_math 1
execute unless score @s vp_player_id matches 1.. run scoreboard players operation @s vp_player_id = .next_id vplus_math

# 2. Store player ID in storage for Macro parameterization
execute store result storage main:data current_player.id int 1 run scoreboard players get @s vp_player_id

# 3. Trigger verification logic by injecting ID via Macro
function main:mechanic/region/handle_player with storage main:data current_player
