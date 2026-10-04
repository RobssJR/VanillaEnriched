# ==============================================================================
# MANTER MARCADOR VIVO DURANTE O VOO
# ==============================================================================

# 1. Remove a flag vp_alive para que ela deva ser revalidada pela poção no próximo tick
tag @s remove vp_alive

# 2. Contador de segurança contra marcadores órfãos (chunks descarregados, etc.)
# 300 ticks = 15 segundos máximos de voo
scoreboard players add @s vp_tracker_age 1
execute if score @s vp_tracker_age matches 300.. run kill @s
