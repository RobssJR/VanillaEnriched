# Initialize core scoreboards
scoreboard objectives add vplus_math dummy
scoreboard objectives add vplus_state dummy
scoreboard objectives add vplus_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add color_help trigger

scoreboard players set .paused vplus_state 0

# Inicializacao de Constantes Matematicas
scoreboard players set .60 vplus_math 60
scoreboard players set .1000 vplus_math 1000
scoreboard players set .24000 vplus_math 24000
scoreboard players set .28 vplus_math 28
scoreboard players set .112 vplus_math 112
scoreboard players set .-1 vplus_math -1
scoreboard players set .wc_timer vplus_math 0
scoreboard players set .last_minute vplus_math -1

# Notify players of successful load
tellraw @a {"text":"[VanillaPlus Core] Sistemas Carregados com Sucesso!","color":"green"}