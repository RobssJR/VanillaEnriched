# ==============================================================================
# CLASSIFICAÇÃO DE PROJÉTIL DE POÇÃO (Minecraft 26.3 / Data Components)
# ==============================================================================

# Marca como escaneada para não reprocessar no ar
tag @s add vp_potion_scanned

# 1. Verifica se é poção de água
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"minecraft:water"}}}} run return run function main:mechanic/invisibility/init_water_tracker
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"water"}}}} run return run function main:mechanic/invisibility/init_water_tracker
execute if data entity @s {Item:{tag:{Potion:"minecraft:water"}}} run return run function main:mechanic/invisibility/init_water_tracker
execute if data entity @s {Item:{tag:{Potion:"water"}}} run return run function main:mechanic/invisibility/init_water_tracker

# 2. Verifica se é poção de invisibilidade (Splash Potion direta)
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"minecraft:invisibility"}}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"minecraft:long_invisibility"}}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"invisibility"}}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{potion:"long_invisibility"}}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:invisibility"}]}}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{components:{"minecraft:potion_contents":{custom_effects:[{id:"invisibility"}]}}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{tag:{Potion:"minecraft:invisibility"}}} run return run function main:mechanic/invisibility/init_invis_tracker
execute if data entity @s {Item:{tag:{Potion:"minecraft:long_invisibility"}}} run return run function main:mechanic/invisibility/init_invis_tracker
