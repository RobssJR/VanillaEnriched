$summon item ~ ~ ~ {Tags:["vplus_compass_temp"],PickupDelay:32767s,Item:{id:"minecraft:stone",count:1}}

# Fetch from correct hand
execute if items entity @s weapon.mainhand minecraft:compass unless data entity @s SelectedItem.components."minecraft:custom_data".vplus_lore run item replace entity @e[type=item,tag=vplus_compass_temp,limit=1] contents from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand minecraft:compass if items entity @s weapon.offhand minecraft:compass unless data entity @s equipment.offhand.components."minecraft:custom_data".vplus_lore run item replace entity @e[type=item,tag=vplus_compass_temp,limit=1] contents from entity @s weapon.offhand

# Modify
$data modify entity @e[type=item,tag=vplus_compass_temp,limit=1] Item.components."minecraft:lore" set value ['{"text":"X: $(x) | Y: $(y) | Z: $(z)","color":"white","italic":false}','[{"text":"Destination: ","color":"gray","italic":false},{"text":"$(dim)","color":"yellow","italic":false}]']
data modify entity @e[type=item,tag=vplus_compass_temp,limit=1] Item.components."minecraft:custom_data".vplus_lore set value 1b

# Return to correct hand
execute if items entity @s weapon.mainhand minecraft:compass unless data entity @s SelectedItem.components."minecraft:custom_data".vplus_lore run item replace entity @s weapon.mainhand from entity @e[type=item,tag=vplus_compass_temp,limit=1] contents
execute unless items entity @s weapon.mainhand minecraft:compass if items entity @s weapon.offhand minecraft:compass unless data entity @s equipment.offhand.components."minecraft:custom_data".vplus_lore run item replace entity @s weapon.offhand from entity @e[type=item,tag=vplus_compass_temp,limit=1] contents

kill @e[type=item,tag=vplus_compass_temp]
