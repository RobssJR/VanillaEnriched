# ==============================================================================
# INVISIBILITY & WATER SPLASH TICK LOOP (Minecraft 26.3 / Data Components)
# Executado a cada tick através de main:setup/tick
# ==============================================================================

# 1. Processamento de Nuvens de Invisibilidade
# Otimização: executa apenas quando existem nuvens pendentes no mundo
execute if entity @e[type=minecraft:area_effect_cloud,tag=!vp_invis_processed] run function main:mechanic/invisibility/check_clouds

# 2. Detecção e Registro de Novos Projéteis de Poção
# Otimização: avalia apenas poções que acabaram de ser arremessadas
execute if entity @e[type=minecraft:potion,tag=!vp_potion_scanned] as @e[type=minecraft:potion,tag=!vp_potion_scanned] run function main:mechanic/invisibility/check_potion

# 3. Rastreamento de Movimento das Poções de Água
# Sincroniza a posição do marcador companheiro a cada tick de voo
execute if entity @e[type=minecraft:potion,tag=vp_water_potion] as @e[type=minecraft:potion,tag=vp_water_potion] run function main:mechanic/invisibility/update_water_potion

# 4. Avaliação de Impacto e Quebra da Poção
# Dispara o efeito de reversão assim que o projétil da poção de água quebra
execute if entity @e[type=minecraft:marker,tag=vp_water_tracker] as @e[type=minecraft:marker,tag=vp_water_tracker] at @s run function main:mechanic/invisibility/tick_tracker
