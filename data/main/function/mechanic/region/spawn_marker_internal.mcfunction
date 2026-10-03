# 1. Lê o nome customizado do Block Entity do estandarte (suporta custom_name e CustomName)
data remove storage main:temp banner_name
execute store success storage main:temp has_name byte 1 run data modify storage main:temp banner_name set from block ~ ~ ~ custom_name
execute if data storage main:temp {has_name: 0b} run execute store success storage main:temp has_name byte 1 run data modify storage main:temp banner_name set from block ~ ~ ~ CustomName

# 2. Se o estandarte não tiver nome na bigorna, encerra
execute if data storage main:temp {has_name: 0b} run return 0

# 3. Evita duplicatas se um marcador já existir no local
execute if entity @e[type=marker,tag=vp_region_marker,distance=..0.8] run return 0

# 4. Invoca o marcador na coordenada exata
summon minecraft:marker ~ ~ ~ {Tags:["vp_region_marker"]}

# 5. Copia o nome customizado para o CustomName do marcador
data modify entity @e[type=marker,tag=vp_region_marker,distance=..0.8,limit=1,sort=nearest] CustomName set from storage main:temp banner_name

# 6. Limpeza do storage temporário
data remove storage main:temp has_name
data remove storage main:temp banner_name
