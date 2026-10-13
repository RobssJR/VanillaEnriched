summon item ~ ~ ~ {Tags:["vplus_compass_temp"],PickupDelay:32767s,Item:{id:"minecraft:stone",count:1}}

# Fetch from correct hand
execute if items entity @s weapon.mainhand minecraft:compass unless data entity @s SelectedItem.components."minecraft:custom_data".vplus_lore_en run item replace entity @e[type=item,tag=vplus_compass_temp,limit=1] contents from entity @s weapon.mainhand
execute unless items entity @s weapon.mainhand minecraft:compass if items entity @s weapon.offhand minecraft:compass unless data entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".vplus_lore_en run item replace entity @e[type=item,tag=vplus_compass_temp,limit=1] contents from entity @s weapon.offhand

# Modify: Direct SNBT component list (Minecraft 1.20.5+ / 26.3 standard)
$data modify entity @e[type=item,tag=vplus_compass_temp,limit=1] Item.components."minecraft:lore" set value [{text:"Destination: ",color:"gray",italic:false,extra:[{text:"X: $(x) | Y: $(y) | Z: $(z)",color:"white",italic:false}]},{text:"Dimension: ",color:"gray",italic:false,extra:[{text:"$(dim)",color:"yellow",italic:false}]}]
data modify entity @e[type=item,tag=vplus_compass_temp,limit=1] Item.components."minecraft:custom_data".vplus_lore_en set value 1b

# Return to correct hand
execute if items entity @s weapon.mainhand minecraft:compass run item replace entity @s weapon.mainhand from entity @e[type=item,tag=vplus_compass_temp,limit=1] contents
execute unless items entity @s weapon.mainhand minecraft:compass if items entity @s weapon.offhand minecraft:compass run item replace entity @s weapon.offhand from entity @e[type=item,tag=vplus_compass_temp,limit=1] contents

kill @e[type=item,tag=vplus_compass_temp]
