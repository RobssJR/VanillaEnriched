effect give @s night_vision 45 0 true
execute in minecraft:overworld run locate biome minecraft:lush_caves
tellraw @s [{"text":"[VFX+] ","color":"dark_green","bold":true},{"text":"Visão noturna concedida e localizando ","color":"gray"},{"text":"Lush Caves","color":"green","bold":true},{"text":". Teleporte-se para ver as partículas subterrâneas de poeira e esporos!","color":"gray"}]
