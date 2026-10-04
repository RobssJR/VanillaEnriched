# ==============================================================================
# FILTRAR ENTIDADES INVISÍVEIS PARA REVERSÃO
# Executado como a entidade candidata (#main:hideable_stands)
# ==============================================================================

# Atua apenas se a entidade estiver atualmente invisível
execute if data entity @s {Invisible:1b} run function main:mechanic/invisibility/do_reveal
