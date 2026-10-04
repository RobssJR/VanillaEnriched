# Clear temporary name and head
data remove storage enriched:tmp name
data remove storage enriched:tmp head

# 1. Ensure safe container block exists in overworld at 0 319 0
execute in minecraft:overworld run setblock 0 319 0 minecraft:barrel keep

# 2. Place player head in barrel using command executor (@s)
execute in minecraft:overworld as @s run loot replace block 0 319 0 container.0 loot main:item/stat_book/set_name

# 3. Read generated item
data modify storage enriched:tmp head set from block 0 319 0 Items[{Slot:0b}]

# 4. Extract player profile name (string format or compound format)
data modify storage enriched:tmp name set from storage enriched:tmp head.components."minecraft:profile".name
execute unless data storage enriched:tmp name run data modify storage enriched:tmp name set from storage enriched:tmp head.components."minecraft:profile"
execute unless data storage enriched:tmp name run data modify storage enriched:tmp name set from storage enriched:tmp head.tag.SkullOwner.Name
execute unless data storage enriched:tmp name run data modify storage enriched:tmp name set from storage enriched:tmp head.tag.SkullOwner

# 5. Clean barrel slot 0
data remove block 0 319 0 Items[{Slot:0b}]

# 6. Safety check: ensure 'name' is not a compound/UUID object (e.g. {id: [...]})
execute if data storage enriched:tmp name.id run data remove storage enriched:tmp name

# 7. Save resolved name if valid string
execute if data storage enriched:tmp name unless data storage enriched:tmp {name:""} as @s run function main:item/stat_book/store_name_save with entity @s
