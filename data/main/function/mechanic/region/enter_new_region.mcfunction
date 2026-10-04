# 1. Play subtle area discovery chime
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 0.5

# 2. Configure title timings (Fade-in: 10t, Stay: 70t, Fade-out: 20t)
title @s times 10 70 20

# 3. Prepare region name parameter for Macro Function
data modify storage main:temp title_params.region_name set from storage main:temp target_region

# 4. Trigger Macro Function to render title and subtitle
function main:mechanic/region/show_title with storage main:temp title_params
