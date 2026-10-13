# ==============================================================================
# Mechanic: Sulfur Cube - Botanical Moss (Efeito Sutil)
# Context: as @s at @s (Sulfur Cube holding Moss Block)
# ==============================================================================

# Subtle floating floral spores & faint falling petal
particle minecraft:spore_blossom_air ~ ~0.5 ~ 0.25 0.2 0.25 0.01 2
particle minecraft:cherry_leaves ~ ~0.6 ~ 0.2 0.15 0.2 0.01 1

# Gentle, very soft foliage rustle (every 3 seconds, low volume)
execute if score .sulfur_snd vplus_math matches 0 run playsound minecraft:block.azalea_leaves.step neutral @a ~ ~ ~ 0.25 1.2
