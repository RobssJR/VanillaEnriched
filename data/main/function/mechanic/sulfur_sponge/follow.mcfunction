# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum - Follow Player
# Context: as @s at @s (Sulfur Cube)
# ==============================================================================

# Follow player holding sponge in mainhand or offhand
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.mainhand minecraft:sponge run tp @s ^ ^ ^0.2
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.offhand minecraft:sponge unless items entity @p[distance=2.2..12] weapon.mainhand minecraft:sponge run tp @s ^ ^ ^0.2

# Follow player holding wet sponge in mainhand or offhand
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.mainhand minecraft:wet_sponge run tp @s ^ ^ ^0.2
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.offhand minecraft:wet_sponge unless items entity @p[distance=2.2..12] weapon.mainhand minecraft:wet_sponge run tp @s ^ ^ ^0.2

# Follow player holding slimeball in mainhand or offhand
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.mainhand minecraft:slime_ball run tp @s ^ ^ ^0.2
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.offhand minecraft:slime_ball unless items entity @p[distance=2.2..12] weapon.mainhand minecraft:slime_ball run tp @s ^ ^ ^0.2

# Follow player holding magma block in mainhand or offhand
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.mainhand minecraft:magma_block run tp @s ^ ^ ^0.2
execute facing entity @p[distance=2.2..12] feet if items entity @p[distance=2.2..12] weapon.offhand minecraft:magma_block unless items entity @p[distance=2.2..12] weapon.mainhand minecraft:magma_block run tp @s ^ ^ ^0.2
