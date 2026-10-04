# ==============================================================================
# ATUALIZAÇÃO CONTÍNUA DA POÇÃO DE INVISIBILIDADE EM VOO
# Executado como cada poção com a tag vp_invis_potion
# ==============================================================================

# Armazena o ID da poção atual para comparação de pontuação sem ambiguidade
scoreboard players operation .curr_water_id vplus_math = @s vp_water_id

# Localiza o marcador companheiro com o mesmo ID numérico e sincroniza a posição
execute at @s as @e[type=marker,tag=vp_invis_tracker,distance=..4] if score @s vp_water_id = .curr_water_id vplus_math run function main:mechanic/invisibility/sync_tracker
