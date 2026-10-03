# 1. Garante que o jogador possua um ID único para indexar o storage no Multiplayer
execute unless score @s vp_player_id matches 1.. run scoreboard players add .next_id vplus_math 1
execute unless score @s vp_player_id matches 1.. run scoreboard players operation @s vp_player_id = .next_id vplus_math

# 2. Armazena o ID do jogador no storage para parametrização da Macro
execute store result storage main:data current_player.id int 1 run scoreboard players get @s vp_player_id

# 3. Dispara a lógica de verificação injetando o ID via Macro
function main:mechanic/region/handle_player with storage main:data current_player
