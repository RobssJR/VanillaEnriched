# Macro: recebe $(id) para indexar a memória individual do jogador no storage

# 1. Procura o marcador de região mais próximo num raio de 40 blocos
execute store success storage main:temp in_region byte 1 if entity @e[type=marker,tag=vp_region_marker,distance=..40,limit=1,sort=nearest]

# 2. Condição de Saída: Se o jogador NÃO estiver num raio de 40 blocos de nenhum marcador
# Limpa a memória de região do jogador para que possa reativar o título ao retornar
$execute if data storage main:temp {in_region: 0b} run data remove storage main:data players.p_$(id).last_region
execute if data storage main:temp {in_region: 0b} run return 0

# 3. Condição de Entrada / Presença em Região:
# Lê o CustomName do marcador mais próximo
data modify storage main:temp target_region set from entity @e[type=marker,tag=vp_region_marker,distance=..40,limit=1,sort=nearest] CustomName

# Carrega a região salva atualmente na memória deste jogador
data remove storage main:temp player_saved
$data modify storage main:temp player_saved set from storage main:data players.p_$(id).last_region

# Compara a região do marcador com a região na memória do jogador
execute store success storage main:temp is_diff byte 1 run data modify storage main:temp player_saved set from storage main:temp target_region

# Se for DIFERENTE: atualiza a memória e dispara as notificações de descoberta
$execute if data storage main:temp {is_diff: 1b} run data modify storage main:data players.p_$(id).last_region set from storage main:temp target_region
execute if data storage main:temp {is_diff: 1b} run function main:mechanic/region/enter_new_region
