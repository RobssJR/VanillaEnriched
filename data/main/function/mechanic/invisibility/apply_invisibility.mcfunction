# ==============================================================================
# APLICAÇÃO DE INVISIBILIDADE EM ENTIDADES PRÓXIMAS
# ==============================================================================

# Executa em todas as entidades da tag #main:hideable_stands em um raio de até 3 blocos
execute as @e[type=#main:hideable_stands,distance=..3] at @s run function main:mechanic/invisibility/hide_entity
