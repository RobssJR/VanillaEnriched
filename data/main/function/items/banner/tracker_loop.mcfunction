# Reagenda o loop de rastreamento para rodar a cada 1 segundo (20 ticks)
schedule function main:items/banner/tracker_loop 20t replace

# Executa a checagem otimizada para cada jogador online
execute as @a at @s run function main:items/banner/check_player
