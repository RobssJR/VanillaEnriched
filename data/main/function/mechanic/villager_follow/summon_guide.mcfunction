# Exclude sleeping villagers, NoAI, or riding vehicles
execute if entity @s[nbt={Sleeping:1b}] run return 0
execute if entity @s[nbt={NoAI:1b}] run return 0
execute if entity @s[nbt={RootVehicle:{}}] run return 0

# Tag villager and join no-collision team
tag @s add main.tempted
team join main.guide @s

# Summon guide exactly at villager feet
execute summon wandering_trader run function main:mechanic/villager_follow/init_guide

# Initial temptation feedback
playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~2 ~ 0.3 0.2 0.3 0 5
