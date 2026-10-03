# 1. Revoga o avanço para que possa ser acionado novamente
advancement revoke @s only main:region/place_banner

# 2. Localiza o estandarte recém-colocado:
execute if block ~ ~ ~ #minecraft:banners run return run function main:mechanic/region/create_marker

# Inicia o raycast a partir dos olhos do jogador na linha de visão
execute at @s anchored eyes positioned ^ ^ ^0.3 run function main:mechanic/region/find_banner_step {steps:20}
