# Set custom name
data modify block 0 319 0 Items[0].components."minecraft:custom_name" set value {text:"Giant Honey Dipper",color:"gold",underlined:true,bold:true,italic:false}

# Set lore
data modify block 0 319 0 Items[0].components."minecraft:lore" set value [{text:"Custom Head ID: 129904",color:"gray",italic:false},{text:"www.minecraft-heads.com",color:"blue",italic:false}]

# Set textures profile
data modify block 0 319 0 Items[0].components."minecraft:profile" set value {properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNkY2ExZDdkN2UyNzEzMmE4MDVhZjNhNWY5ZDNmMjliNzhmMjJlMzFlYjk3ZGI0MDZjZDM3YmUwZTJkNmU3NyJ9fX0="}]}

# Remove can_transform flag
data remove block 0 319 0 Items[0].components."minecraft:custom_data".can_transform
data remove block 0 319 0 Items[0].components."minecraft:custom_data".decorative_head

# Mark success flag
data modify storage main:custom_head transformed set value 1b
