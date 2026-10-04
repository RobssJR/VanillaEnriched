# ==============================================================================
# DETECÇÃO INICIAL DE PROJÉTIL DE POÇÃO
# ==============================================================================

# Marca o projétil como escaneado para evitar verificações repetidas a cada tick
tag @s add vp_potion_scanned

# Verifica se os componentes do item correspondem a um frasco arremessável de água
function main:mechanic/invisibility/is_water_potion
execute if score .is_water vplus_state matches 1 run function main:mechanic/invisibility/init_water_tracker
