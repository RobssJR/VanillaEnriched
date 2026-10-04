# Macro: receives $(slot)

# Ensure safe barrel exists at 0 319 0 in overworld
execute in minecraft:overworld unless block 0 319 0 minecraft:barrel run setblock 0 319 0 minecraft:barrel keep

# 1. Copy item from player slot to temporary safe container
$execute in minecraft:overworld run item replace block 0 319 0 container.0 from entity @s $(slot)

# 2. Run head transformation check
function main:mechanic/custom_head/transform

# 3. Copy item back to player slot
$execute in minecraft:overworld run item replace entity @s $(slot) from block 0 319 0 container.0

# 4. Clear safe container slot
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air

# 5. Audiovisual feedback if transformation occurred
execute if data storage main:custom_head {transformed: 1b} at @s run playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 1 1.2
execute if data storage main:custom_head {transformed: 1b} at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
execute if data storage main:custom_head {transformed: 1b} at @s run particle minecraft:happy_villager ~ ~1 ~ 0.4 0.4 0.4 1 12 normal
execute if data storage main:custom_head {transformed: 1b} run title @s actionbar [{"text":"[Vanilla Enriched] ","color":"gold","bold":true},{"text":"Head Transformed!","color":"green"}]
data remove storage main:custom_head transformed
