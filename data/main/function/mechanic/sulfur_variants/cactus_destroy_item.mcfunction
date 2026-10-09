# ==============================================================================
# Mechanic: Sulfur Cube - Cactus Destroy Item
# Context: as @s at @s (Dropped item being pricked and destroyed)
# ==============================================================================

# Item break particle shards (cactus shards flying apart)
particle item{item:"minecraft:cactus"} ~ ~0.2 ~ 0.15 0.15 0.15 0.05 16

# Sharp critical break sparks
particle minecraft:crit ~ ~0.2 ~ 0.15 0.15 0.15 0.05 6

# Authentic item breaking sound feedback
playsound minecraft:entity.item.break neutral @a ~ ~ ~ 0.85 1.15
playsound minecraft:block.cactus.destroy neutral @a ~ ~ ~ 0.5 1.4

# Destroy the item entity
kill @s
