# ==============================================================================
# IMPACTO DA POÇÃO DE INVISIBILIDADE ARREMESSÁVEL
# Executado no local exato da colisão do projétil
# ==============================================================================

# 1. Efeitos audiovisuais do impacto
playsound entity.splash_potion.break neutral @a ~ ~ ~ 1.0 1.0
playsound entity.illusioner.mirror_move neutral @a ~ ~ ~ 0.7 1.4
particle minecraft:poof ~ ~0.5 ~ 0.35 0.35 0.35 0.02 20 normal

# 2. Torna invisíveis todos os Armor Stands e Molduras no raio de 3 blocos
execute as @e[type=#main:hideable_stands,distance=..3] at @s run function main:mechanic/invisibility/hide_entity
