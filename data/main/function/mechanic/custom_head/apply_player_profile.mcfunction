# 1. Set profile directly from custom_name (matches player username string)
data modify block 0 319 0 Items[0].components."minecraft:profile" set from block 0 319 0 Items[0].components."minecraft:custom_name"
data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:profile" set from block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name"

# If custom_name had a text field, extract it
data modify block 0 319 0 Items[0].components."minecraft:profile" set from block 0 319 0 Items[0].components."minecraft:custom_name".text
execute if data block 0 319 0 Items[0].components."minecraft:profile".text run data modify block 0 319 0 Items[0].components."minecraft:profile".name set from block 0 319 0 Items[0].components."minecraft:profile".text
execute if data block 0 319 0 Items[0].components."minecraft:profile".text run data remove block 0 319 0 Items[0].components."minecraft:profile".text

# 2. Remove custom_name so Minecraft automatically displays "<Player>'s Head" in standard head format
data remove block 0 319 0 Items[0].components."minecraft:custom_name"
data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name"

# 3. Remove placeholder crafting instructions lore
data remove block 0 319 0 Items[0].components."minecraft:lore"
data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:lore"

# 4. Remove can_transform & decorative_head flags so head is permanently resolved
data remove block 0 319 0 Items[0].components."minecraft:custom_data".can_transform
data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".can_transform
data remove block 0 319 0 Items[0].components."minecraft:custom_data".decorative_head
data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".decorative_head

# 5. Mark success flag
data modify storage main:custom_head transformed set value 1b
