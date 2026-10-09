# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum (Cubo de Enxofre com Esponja) - Drain
# Context: as @s at @s (Sulfur Cube holding a dry sponge)
# ==============================================================================

# Protect the living sponge cube underwater
effect give @s minecraft:water_breathing 5 0 true
effect give @s minecraft:fire_resistance 5 0 true

# Drain water in sponge radius (5x5x5 core + 7x3x7 outer ring)
# Store count of water blocks removed
execute store result score .water_cleared vplus_math run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 minecraft:air replace minecraft:water
execute store result score .water_cleared2 vplus_math run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 minecraft:air replace minecraft:water
scoreboard players operation .water_cleared vplus_math += .water_cleared2 vplus_math

# Water absorption particle feedback
execute if score .water_cleared vplus_math matches 1.. run particle minecraft:splash ~ ~0.4 ~ 0.4 0.3 0.4 0.1 10
execute if score .water_cleared vplus_math matches 1.. run particle minecraft:bubble_pop ~ ~0.5 ~ 0.35 0.35 0.35 0.05 6

# Water suction sound (throttled via .sponge_snd timer)
execute if score .water_cleared vplus_math matches 1.. if score .sponge_snd vplus_math matches 0 run playsound minecraft:block.sponge.absorb neutral @a ~ ~ ~ 0.8 1.15
execute if score .water_cleared vplus_math matches 1.. if score .sponge_snd vplus_math matches 0 run playsound minecraft:item.bottle.fill neutral @a ~ ~ ~ 0.4 0.9

# --- Saturation & Drying Logic ---
# Ensure saturation score exists on entity
scoreboard players add @s vp_water_sat 0

# If close to a Magma Sulfur Cube (or Magma Cube mob), constantly evaporate water into steam
execute if entity @e[type=sulfur_cube,tag=vp_magma_cube,distance=..6] run scoreboard players set @s vp_water_sat 0
execute if entity @e[type=magma_cube,distance=..6] run scoreboard players set @s vp_water_sat 0
execute if score .water_cleared vplus_math matches 1.. if entity @e[type=sulfur_cube,tag=vp_magma_cube,distance=..6] run particle minecraft:cloud ~ ~0.7 ~ 0.25 0.2 0.25 0.02 4

# If NOT near magma, accumulate absorbed water blocks towards saturation
execute unless entity @e[type=sulfur_cube,tag=vp_magma_cube,distance=..6] unless entity @e[type=magma_cube,distance=..6] run scoreboard players operation @s vp_water_sat += .water_cleared vplus_math

# When capacity is reached (35+ water blocks), the sponge soaks and turns wet!
execute if score @s vp_water_sat matches 35.. run function main:mechanic/sulfur_sponge/soak

# If it absorbed water and finished clearing all available water around it, soak as well!
execute if score .water_cleared vplus_math matches 0 if score @s vp_water_sat matches 1.. run function main:mechanic/sulfur_sponge/soak
