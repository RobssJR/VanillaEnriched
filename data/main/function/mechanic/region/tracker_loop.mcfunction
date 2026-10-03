# Reagenda o loop de rastreamento para rodar a cada 1 segundo (20 ticks)
schedule function main:mechanic/region/tracker_loop 20t replace

# Executa a checagem otimizada para cada jogador online
execute as @a at @s run function main:mechanic/region/check_player
