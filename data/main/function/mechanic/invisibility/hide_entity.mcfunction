# ==============================================================================
# TORNAR ENTIDADE INDIVIDUAL INVISÍVEL
# ==============================================================================

# Define a tag nativa de invisibilidade para suportes de armaduras e molduras
data modify entity @s Invisible set value 1b

# Dispara partículas de poof para feedback visual imediato
particle minecraft:poof ~ ~0.5 ~ 0.25 0.25 0.25 0.02 12 normal

# Efeito sonoro sutil de desmaterialização/ilusão
playsound entity.illusioner.mirror_move neutral @a ~ ~ ~ 0.6 1.4
