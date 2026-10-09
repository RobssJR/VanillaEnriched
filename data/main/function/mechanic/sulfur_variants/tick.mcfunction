# ==============================================================================
# Mechanic: Sulfur Cube Variants (Mist Machine, Amethyst Resonance, Botanical Moss, Cactus)
# Ticked every tick from setup/tick.mcfunction
# ==============================================================================

# Throttle timer for periodic sound effects (loops 0..59 -> 3 seconds)
scoreboard players add .sulfur_snd vplus_math 1
execute if score .sulfur_snd vplus_math matches 60.. run scoreboard players set .sulfur_snd vplus_math 0

# Remove old variant tags
tag @e[type=sulfur_cube] remove vp_mist_cube
tag @e[type=sulfur_cube] remove vp_amethyst_cube
tag @e[type=sulfur_cube] remove vp_moss_cube
tag @e[type=sulfur_cube] remove vp_cactus_cube

# 1. Detect Mist Cube (Packed Ice / Blue Ice)
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:packed_ice run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:blue_ice run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:packed_ice run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:blue_ice run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:packed_ice"}}}] run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:blue_ice"}}}] run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:packed_ice"}}] run tag @s add vp_mist_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:blue_ice"}}] run tag @s add vp_mist_cube

# 2. Detect Amethyst Resonance Cube (Amethyst Block)
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:amethyst_block run tag @s add vp_amethyst_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:amethyst_block run tag @s add vp_amethyst_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:amethyst_block"}}}] run tag @s add vp_amethyst_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:amethyst_block"}}] run tag @s add vp_amethyst_cube

# 3. Detect Botanical Moss Cube (Moss Block)
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:moss_block run tag @s add vp_moss_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:moss_block run tag @s add vp_moss_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:moss_block"}}}] run tag @s add vp_moss_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:moss_block"}}] run tag @s add vp_moss_cube

# 4. Detect Cactus Cube (Cactus)
execute as @e[type=sulfur_cube] if items entity @s armor.body minecraft:cactus run tag @s add vp_cactus_cube
execute as @e[type=sulfur_cube] if items entity @s contents minecraft:cactus run tag @s add vp_cactus_cube
execute as @e[type=sulfur_cube,nbt={equipment:{body:{id:"minecraft:cactus"}}}] run tag @s add vp_cactus_cube
execute as @e[type=sulfur_cube,nbt={body_armor_item:{id:"minecraft:cactus"}}] run tag @s add vp_cactus_cube

# Run variant behaviors
execute as @e[type=sulfur_cube,tag=vp_mist_cube] at @s run function main:mechanic/sulfur_variants/mist_tick
execute as @e[type=sulfur_cube,tag=vp_amethyst_cube] at @s run function main:mechanic/sulfur_variants/amethyst_tick
execute as @e[type=sulfur_cube,tag=vp_moss_cube] at @s run function main:mechanic/sulfur_variants/moss_tick
execute as @e[type=sulfur_cube,tag=vp_cactus_cube] at @s run function main:mechanic/sulfur_variants/cactus_tick
