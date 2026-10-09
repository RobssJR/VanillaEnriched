# ==============================================================================
# Mechanic: Sulfur Cube - Amethyst Resonance (Efeito Sutil)
# Context: as @s at @s (Sulfur Cube holding Amethyst Block)
# ==============================================================================

# Subtle purple motes & faint sparkle (1 particle each)
particle minecraft:witch ~ ~0.4 ~ 0.2 0.2 0.2 0.01 1
particle minecraft:portal ~ ~0.5 ~ 0.15 0.15 0.15 0.02 1

# Soft crystalline chime (played gently every 3 seconds, low volume)
execute if score .sulfur_snd vplus_math matches 0 run playsound minecraft:block.amethyst_block.chime neutral @a ~ ~ ~ 0.35 1.3
