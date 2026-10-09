# ==============================================================================
# Mechanic: Sulfur Cube Ocean Vacuum (Cubo de Enxofre com Esponja)
# Ticked every tick from setup/tick.mcfunction
# ==============================================================================

# Throttle sound timer (loops 0..9)
scoreboard players add .sponge_snd vplus_math 1
execute if score .sponge_snd vplus_math matches 10.. run scoreboard players set .sponge_snd vplus_math 0

# Remove old state tags
tag @e[type=sulfur_cube] remove vp_sponge_cube
tag @e[type=sulfur_cube] remove vp_wet_sponge_cube
tag @e[type=sulfur_cube] remove vp_magma_cube

# Detect Magma Sulfur Cubes (Hot Archetype)
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:magma_block run tag @s add vp_magma_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:magma_block run tag @s add vp_magma_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:magma_block"}}}] run tag @s add vp_magma_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:magma_block"}}] run tag @s add vp_magma_cube

# Detect Dry Sponge Sulfur Cubes
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:sponge run tag @s add vp_sponge_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:sponge run tag @s add vp_sponge_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:sponge"}}}] run tag @s add vp_sponge_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:sponge"}}] run tag @s add vp_sponge_cube

# Detect Wet Sponge Sulfur Cubes
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:wet_sponge run tag @s add vp_wet_sponge_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:wet_sponge run tag @s add vp_wet_sponge_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:wet_sponge"}}}] run tag @s add vp_wet_sponge_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:wet_sponge"}}] run tag @s add vp_wet_sponge_cube

# 1. Dry Sponge Cubes: Vacuum water
execute as @e[type=sulfur_cube,tag=vp_sponge_cube] at @s run function main:mechanic/sulfur_sponge/drain

# 2. Wet Sponge Cubes: Dripping & Check drying proximity near Magma Cube
execute as @e[type=sulfur_cube,tag=vp_wet_sponge_cube] at @s run function main:mechanic/sulfur_sponge/wet_tick

# 3. Magma Sulfur Cubes: Boiling ambiance when in water
execute as @e[type=sulfur_cube,tag=vp_magma_cube] at @s run function main:mechanic/sulfur_sponge/magma_tick

# 4. Companion Following: Lead cubes with sponge, wet_sponge, slimeball, or magma block
execute as @e[type=sulfur_cube,tag=vp_sponge_cube] at @s run function main:mechanic/sulfur_sponge/follow
execute as @e[type=sulfur_cube,tag=vp_wet_sponge_cube] at @s run function main:mechanic/sulfur_sponge/follow
execute as @e[type=sulfur_cube,tag=vp_magma_cube] at @s run function main:mechanic/sulfur_sponge/follow
