# ==============================================================================
# VERIFICADOR DE FRASCO DE ÁGUA ARREMESSÁVEL (Data Components 26.3)
# ==============================================================================

# Reseta o indicador de frasco de água
scoreboard players set .is_water vplus_state 0

# 1. Padrão Data Components 1.20.5+ / 26.3 (minecraft:potion_contents)
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}} run scoreboard players set .is_water vplus_state 1
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"water"}}}} run scoreboard players set .is_water vplus_state 1

# 2. Compatibilidade legada
execute if data entity @s {Item:{tag:{Potion:"minecraft:water"}}} run scoreboard players set .is_water vplus_state 1
execute if data entity @s {Item:{tag:{Potion:"water"}}} run scoreboard players set .is_water vplus_state 1
