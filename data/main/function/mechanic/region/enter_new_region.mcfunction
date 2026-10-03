# 1. Toca o som suave de descoberta de área
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 0.5

# 2. Configura a duração do título (Fade-in: 10t, Exibição: 70t, Fade-out: 20t)
title @s times 10 70 20

# 3. Prepara o parâmetro do nome para a Macro Function
data modify storage main:temp title_params.region_name set from storage main:temp target_region

# 4. Dispara a Macro Function para renderizar o título e subtítulo
function main:mechanic/region/show_title with storage main:temp title_params
