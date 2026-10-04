# ==============================================================================
# IDENTIFICAÇÃO DO EFEITO DE INVISIBILIDADE NA NUVEM
# ==============================================================================

# 1. Marca imediatamente a nuvem para evitar checagens redundantes ou spam nos ticks seguintes
tag @s add vp_invis_processed

# 2. Verificação de componentes modernos (26.3 / Data Components)
execute if data entity @s {potion_contents:{potion:"minecraft:invisibility"}} run return run function main:mechanic/invisibility/apply_invisibility
execute if data entity @s {potion_contents:{potion:"minecraft:long_invisibility"}} run return run function main:mechanic/invisibility/apply_invisibility
execute if data entity @s {potion_contents:{potion:"invisibility"}} run return run function main:mechanic/invisibility/apply_invisibility
execute if data entity @s {potion_contents:{potion:"long_invisibility"}} run return run function main:mechanic/invisibility/apply_invisibility

# 3. Verificação de efeitos customizados (custom_effects)
execute if data entity @s {potion_contents:{custom_effects:[{id:"minecraft:invisibility"}]}} run return run function main:mechanic/invisibility/apply_invisibility
execute if data entity @s {potion_contents:{custom_effects:[{id:"invisibility"}]}} run return run function main:mechanic/invisibility/apply_invisibility

# 4. Compatibilidade com NBT legado
execute if data entity @s {Potion:"minecraft:invisibility"} run return run function main:mechanic/invisibility/apply_invisibility
execute if data entity @s {Potion:"minecraft:long_invisibility"} run return run function main:mechanic/invisibility/apply_invisibility
