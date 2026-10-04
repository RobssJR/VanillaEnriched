# ==============================================================================
# GATILHO: INTERAÇÃO COM MOLDURA INVISÍVEL
# ==============================================================================

# Se a moldura recebeu um item, torna-a invisível imediatamente
execute as @e[tag=main.invisible_frame,nbt={Invisible:0b},nbt={Item:{}}] run data modify entity @s Invisible set value true

# Revoga o avanço para que possa ser acionado novamente
advancement revoke @s only main:mechanic/invisible_frame/insert_or_rotate
