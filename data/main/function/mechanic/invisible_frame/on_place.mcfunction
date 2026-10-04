# ==============================================================================
# GATILHO: COLOCAÇÃO DE MOLDURA INVISÍVEL
# ==============================================================================

# Revoga o avanço para que possa ser acionado novamente
advancement revoke @s only main:mechanic/invisible_frame/place

# Cria um marcador de persistência na moldura recém-colocada
execute as @e[tag=main.invisible_frame] at @s unless entity @e[type=marker,tag=main.frame_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["main.frame_marker"]}
