# ==============================================================================
# PROCESSAMENTO DE NUVENS DE EFEITO (Area Effect Cloud)
# ==============================================================================

execute as @e[type=minecraft:area_effect_cloud,tag=!vp_invis_processed] at @s run function main:mechanic/invisibility/process_cloud
