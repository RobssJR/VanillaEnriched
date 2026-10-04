# ==============================================================================
# AVALIAÇÃO DE IMPACTO DO MARCADOR
# Executado como cada marcador rastreador em sua posição
# ==============================================================================

# 1. Se o marcador recebeu a flag vp_alive neste tick, a poção de água ainda está em voo
execute if entity @s[tag=vp_alive] run return run function main:mechanic/invisibility/keep_tracker_alive

# 2. Se NÃO possui a tag vp_alive, a poção quebrou/colidiu contra bloco ou entidade neste tick!
# Executa o efeito de impacto imediatamente na última posição registrada
function main:mechanic/invisibility/water_splash_impact

# 3. Elimina o marcador após o processamento
kill @s
