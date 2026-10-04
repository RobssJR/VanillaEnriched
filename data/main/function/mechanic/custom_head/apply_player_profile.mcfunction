# Macro: receives $(name)

# Set profile component to target player username
$data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:profile" set value {name:"$(name)"}

# Set clean custom name without default anvil italics
$data modify block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name" set value {text:"$(name)",italic:false}

# Remove placeholder crafting instructions lore
data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:lore"

# Remove can_transform flag so head is permanently resolved
data remove block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_data".can_transform

# Mark success flag
data modify storage main:custom_head transformed set value 1b
