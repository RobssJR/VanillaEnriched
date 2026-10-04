# ==============================================================================
# SINCRONIZAÇÃO DO MARCADOR COMPANHEIRO
# Executado como o marcador correspondente à poção atual
# ==============================================================================

# Teleporta o marcador para a posição atual da poção
tp @s ~ ~ ~

# Ativa a flag de vida do tick
tag @s add vp_alive
