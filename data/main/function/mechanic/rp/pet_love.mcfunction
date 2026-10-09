# ==============================================================================
# Roleplay Mechanic: Pet Love (Carinho nos Pets)
# Triggered via advancement main:mechanic/rp/pet_love
# Context: as @s at @s (Player)
# ==============================================================================

# Revoke advancement immediately so it can be triggered repeatedly
advancement revoke @s only main:mechanic/rp/pet_love

# Ensure the player's mainhand is empty
execute if items entity @s weapon.mainhand * run return 0

# Identify candidate pets within 3 blocks
tag @e[tag=vp_pet_target] remove vp_pet_target
tag @e[tag=vp_pet_candidate] remove vp_pet_candidate
execute at @s as @e[type=minecraft:wolf,distance=..3] run tag @s add vp_pet_candidate
execute at @s as @e[type=minecraft:cat,distance=..3] run tag @s add vp_pet_candidate

# Select the nearest pet
execute at @s as @e[tag=vp_pet_candidate,limit=1,sort=nearest] run tag @s add vp_pet_target
tag @e[tag=vp_pet_candidate] remove vp_pet_candidate

# Wolf feedback: pant sound & heart particles
execute as @e[tag=vp_pet_target,type=minecraft:wolf] at @s run playsound minecraft:entity.wolf.pant player @a ~ ~ ~ 1.0 1.0
execute as @e[tag=vp_pet_target,type=minecraft:wolf] at @s run particle minecraft:heart ~ ~0.5 ~ 0.25 0.2 0.2 0 4

# Cat feedback: purr sound & heart particles
execute as @e[tag=vp_pet_target,type=minecraft:cat] at @s run playsound minecraft:entity.cat.purr player @a ~ ~ ~ 1.0 1.0
execute as @e[tag=vp_pet_target,type=minecraft:cat] at @s run particle minecraft:heart ~ ~0.35 ~ 0.25 0.2 0.2 0 4

# Cleanup target tag
tag @e[tag=vp_pet_target] remove vp_pet_target
