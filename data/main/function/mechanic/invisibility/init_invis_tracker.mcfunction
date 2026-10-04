# ==============================================================================
# INICIALIZAÇÃO DO RASTREAMENTO DA POÇÃO DE INVISIBILIDADE
# ==============================================================================

# 1. Marca a poção como projétil de invisibilidade monitorado
tag @s add vp_invis_potion

# 2. Gera um ID numérico exclusivo para associar a poção ao seu marcador
scoreboard players add .next_water_id vplus_math 1
scoreboard players operation @s vp_water_id = .next_water_id vplus_math

# 3. Invoca o marcador rastreador companheiro exatamente na posição da poção
execute at @s run summon marker ~ ~ ~ {Tags:["vp_invis_tracker","vp_alive"]}

# 4. Vincula o mesmo ID ao marcador recém-criado
scoreboard players operation @e[type=marker,tag=vp_invis_tracker,distance=..0.2,sort=nearest,limit=1] vp_water_id = .next_water_id vplus_math
