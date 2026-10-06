# Face player smoothly
execute facing entity @p[tag=main.holds_emerald_block] eyes run tp @s ~ ~ ~ ~ ~

# Occasional admiring particles (approx 1 in 20 ticks)
execute store result score #part vplus_math run random value 1..20
execute if score #part vplus_math matches 1 run particle minecraft:happy_villager ~ ~2 ~ 0.2 0.2 0.2 0 1
