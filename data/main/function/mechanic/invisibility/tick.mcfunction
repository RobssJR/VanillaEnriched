# ==============================================================================
# INVISIBILITY & WATER SPLASH TICK LOOP (Minecraft 26.3 / Data Components)
# Executado a cada tick através de main:setup/tick
# ==============================================================================

# 1. Processamento de Nuvens de Efeito (Lingering Potions)
execute if entity @e[type=minecraft:area_effect_cloud,tag=!vp_invis_processed] run function main:mechanic/invisibility/check_clouds

# 2. Detecção e Classificação de Projéteis de Poção Recém-Arremessados
execute if entity @e[type=#main:potion_projectiles,tag=!vp_potion_scanned] as @e[type=#main:potion_projectiles,tag=!vp_potion_scanned] run function main:mechanic/invisibility/identify_potion

# 3. Rastreamento e Sincronização dos Projéteis em Voo
execute if entity @e[type=#main:potion_projectiles,tag=vp_water_potion] as @e[type=#main:potion_projectiles,tag=vp_water_potion] run function main:mechanic/invisibility/update_water_potion
execute if entity @e[type=#main:potion_projectiles,tag=vp_invis_potion] as @e[type=#main:potion_projectiles,tag=vp_invis_potion] run function main:mechanic/invisibility/update_invis_potion

# 4. Avaliação de Impacto e Quebra dos Projéteis
execute if entity @e[type=minecraft:marker,tag=vp_water_tracker] as @e[type=minecraft:marker,tag=vp_water_tracker] at @s run function main:mechanic/invisibility/tick_tracker
execute if entity @e[type=minecraft:marker,tag=vp_invis_tracker] as @e[type=minecraft:marker,tag=vp_invis_tracker] at @s run function main:mechanic/invisibility/tick_invis_tracker
