# Swap held item into safe container slot 1
execute in minecraft:overworld run item replace block 0 319 0 container.1 from entity @s weapon.mainhand

# Ensure custom_data compound exists and merge tracked metadata
execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:1b}].components merge value {"minecraft:custom_data":{}}
$execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:1b}].components."minecraft:custom_data" merge value {ve_tracked:1b,ve_type:"axe",ve_blocks:$(blocks),ve_kills:$(kills)}

# Apply dual formatted lore in English (blocks broken & enemies slain)
$execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:1b}].components."minecraft:lore" set value [{text:"✦ ",color:"gold",italic:false,extra:[{text:"Blocks Broken: ",color:"gray",italic:false},{text:"$(blocks)",color:"yellow",italic:false}]},{text:"✦ ",color:"red",italic:false,extra:[{text:"Enemies Slain: ",color:"gray",italic:false},{text:"$(kills)",color:"gold",italic:false}]}]

# Return item to player mainhand and clear container slot
execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 319 0 container.1
execute in minecraft:overworld run item replace block 0 319 0 container.1 with minecraft:air
