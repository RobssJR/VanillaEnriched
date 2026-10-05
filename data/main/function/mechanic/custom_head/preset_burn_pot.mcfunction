# Set custom name
data modify block 0 319 0 Items[0].components."minecraft:custom_name" set value '{"text":"Burn Pot","color":"gold","underlined":true,"bold":true,"italic":false}'

# Set lore
data modify block 0 319 0 Items[0].components."minecraft:lore" set value [{text:"Custom Head ID: 129856",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}]

# Set textures profile (requires id array in 1.20.5+ / 1.21)
data modify block 0 319 0 Items[0].components."minecraft:profile" set value {id:[I;129856,0,0,129856],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzYzY2JmZDhkN2Q1ZWE1Mzc0Njc5MzljMjNiOTQzMWM3YTQ5Njg3MDUwN2UzMDhkYzI4NGVmNWNjMTU1ZGE1YyJ9fX0="}]}

# Remove flags
data remove block 0 319 0 Items[0].components."minecraft:custom_data".can_transform
data remove block 0 319 0 Items[0].components."minecraft:custom_data".decorative_head

# Mark success flag
data modify storage main:custom_head transformed set value 1b
