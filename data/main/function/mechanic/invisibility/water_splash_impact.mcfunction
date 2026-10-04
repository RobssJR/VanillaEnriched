# ==============================================================================
# IMPACTO DO FRASCO DE ÁGUA ARREMESSÁVEL
# Executado no local exato do impacto da poção de água
# ==============================================================================

# 1. Efeitos audiovisuais da quebra do frasco de água
playsound entity.splash_potion.break neutral @a ~ ~ ~ 1.0 1.0
playsound entity.player.splash.high_speed neutral @a ~ ~ ~ 0.8 1.2
particle minecraft:splash ~ ~0.2 ~ 0.5 0.3 0.5 0.15 60 normal
particle minecraft:drip_water ~ ~0.5 ~ 0.35 0.35 0.35 0.1 25 normal

# 2. Localiza Armor Stands e Molduras no raio de 3 blocos e reverte a invisibilidade
execute as @e[type=#main:hideable_stands,distance=..3] at @s run function main:mechanic/invisibility/reveal_entity
