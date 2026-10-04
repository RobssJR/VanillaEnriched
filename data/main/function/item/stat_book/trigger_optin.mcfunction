scoreboard players set @s enriched.optedin 1
scoreboard players set @s enriched.optin 0

tellraw @s [{translate:"enriched.opt_in",color:"green","italic":true,fallback:"Você escolheu participar das estatísticas."}]
