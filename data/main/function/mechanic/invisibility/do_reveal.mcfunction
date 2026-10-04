# ==============================================================================
# RESTAURAR VISIBILIDADE DA ENTIDADE
# Executado como a entidade (#main:hideable_stands)
# ==============================================================================

# 1. Define Invisible:0b tornando a entidade visível novamente
data modify entity @s Invisible set value 0b

# 2. Feedback audiovisual tátil individual
particle minecraft:splash ~ ~0.5 ~ 0.3 0.3 0.3 0.1 25 normal
playsound entity.generic.splash neutral @a ~ ~ ~ 0.6 1.3
