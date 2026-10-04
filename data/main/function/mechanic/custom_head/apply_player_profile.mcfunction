# Macro: receives $(name)

# 1. Set profile directly from custom_name first (works for plain string names)
data modify block 0 319 0 Items[0].components."minecraft:profile" set from block 0 319 0 Items[0].components."minecraft:custom_name"

# 2. Set profile component with name macro
$data modify block 0 319 0 Items[0].components."minecraft:profile" set value {name:"$(name)"}

# 3. Remove custom_name so Minecraft automatically displays "<Player>'s Head" in standard head format
data remove block 0 319 0 Items[0].components."minecraft:custom_name"

# 4. Remove placeholder crafting instructions lore
data remove block 0 319 0 Items[0].components."minecraft:lore"

# 5. Remove can_transform & decorative_head flags so head is permanently resolved
data remove block 0 319 0 Items[0].components."minecraft:custom_data".can_transform
data remove block 0 319 0 Items[0].components."minecraft:custom_data".decorative_head

# 6. Mark success flag
data modify storage main:custom_head transformed set value 1b
