# Reagenda o loop de manutenção para rodar a cada 5 segundos (100 ticks)
schedule function main:mechanic/region/clean_loop 100t replace

# Varre todos os marcadores de região: se o bloco no local não for mais um estandarte, remove o marcador
execute as @e[type=marker,tag=vp_region_marker] at @s unless block ~ ~ ~ #minecraft:banners run kill @s
