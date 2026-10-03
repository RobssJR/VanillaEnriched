# Verifica se a posição atual atingiu um estandarte sem marcador existente
execute if block ~ ~ ~ #minecraft:banners unless entity @e[type=marker,tag=vp_region_marker,distance=..0.8] run return run function main:mechanic/region/create_marker

# Decrementa o contador de passos
$scoreboard players set .steps vplus_math $(steps)
scoreboard players remove .steps vplus_math 1

# Se ainda houver passos, avança 0.25 blocos adiante
execute if score .steps vplus_math matches 1.. store result storage main:temp next.steps int 1 run scoreboard players get .steps vplus_math
execute if score .steps vplus_math matches 1.. positioned ^ ^ ^0.25 run function main:mechanic/region/find_banner_step with storage main:temp next
