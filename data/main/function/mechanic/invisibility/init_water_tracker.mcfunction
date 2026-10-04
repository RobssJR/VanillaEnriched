# ==============================================================================
# INICIALIZAÇÃO DO RASTREAMENTO DO FRASCO DE ÁGUA
# ==============================================================================

# 1. Marca a entidade de poção como projétil de água monitorado
tag @s add vp_water_potion

# 2. Gera um ID numérico exclusivo para associar a poção ao seu marcador
scoreboard players add .next_water_id vplus_math 1
scoreboard players operation @s vp_water_id = .next_water_id vplus_math

# 3. Invoca o marcador rastreador companheiro exatamente na posição da poção
execute at @s run summon marker ~ ~ ~ {Tags:["vp_water_tracker","vp_alive"]}

# 4. Vincula o mesmo ID ao marcador recém-criado
scoreboard players operation @e[type=marker,tag=vp_water_tracker,distance=..0.2,sort=nearest,limit=1] vp_water_id = .next_water_id vplus_math
