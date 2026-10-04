# ==============================================================================
# AVALIAÇÃO DE IMPACTO DO MARCADOR DE INVISIBILIDADE
# Executado como cada marcador rastreador de invisibilidade
# ==============================================================================

# 1. Se o marcador recebeu a flag vp_alive neste tick, a poção ainda está em voo
execute if entity @s[tag=vp_alive] run return run function main:mechanic/invisibility/keep_tracker_alive

# 2. Se NÃO possui a tag vp_alive, a poção quebrou/colidiu neste tick!
function main:mechanic/invisibility/invis_splash_impact

# 3. Elimina o marcador após o processamento
kill @s
