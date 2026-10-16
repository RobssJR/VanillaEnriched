execute in minecraft:overworld run item replace block 0 319 0 container.1 from entity @s weapon.mainhand

execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:1b}].components merge value {"minecraft:custom_data":{}}
$execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:1b}].components."minecraft:custom_data" merge value {ve_tracked:1b,ve_type:"brush",ve_brushed:$(brushed)}

$execute in minecraft:overworld run data modify block 0 319 0 Items[{Slot:1b}].components."minecraft:lore" set value [{text:"✦ ",color:"yellow",italic:false,extra:[{text:"Blocks Brushed: ",color:"gray",italic:false},{text:"$(brushed)",color:"gold",italic:false}]}]

execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 319 0 container.1
execute in minecraft:overworld run item replace block 0 319 0 container.1 with minecraft:air
