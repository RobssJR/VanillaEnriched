# 1. Update player holding tags
tag @a[tag=main.holds_emerald_block] remove main.holds_emerald_block
execute as @a if items entity @s weapon.mainhand emerald_block run tag @s add main.holds_emerald_block
execute as @a if items entity @s weapon.offhand emerald_block run tag @s add main.holds_emerald_block

# 2. If no players hold emerald block, release any currently tempted villagers and exit immediately
execute unless entity @a[tag=main.holds_emerald_block] if entity @e[type=wandering_trader,tag=main.guide] run function main:mechanic/villager_follow/release_all
execute unless entity @a[tag=main.holds_emerald_block] run return 0

# 3. Tempt new adult villagers near holding players (summon guide)
execute as @e[type=villager,nbt={Age:0},tag=!main.tempted] at @s if entity @p[tag=main.holds_emerald_block,distance=..12] run function main:mechanic/villager_follow/summon_guide

# 4. Update all active guides
execute as @e[type=wandering_trader,tag=main.guide] at @s run function main:mechanic/villager_follow/guide_tick
