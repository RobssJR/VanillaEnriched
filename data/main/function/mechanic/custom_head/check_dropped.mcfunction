# Verify that dropped head entity has the can_transform flag
execute unless data entity @s Item.components."minecraft:custom_data".can_transform run return 0

# Extract custom name
data remove storage main:custom_head raw_name
data remove storage main:custom_head name
data modify storage main:custom_head raw_name set from entity @s Item.components."minecraft:custom_name".text
execute if data storage main:custom_head {raw_name:""} run data modify storage main:custom_head raw_name set from entity @s Item.components."minecraft:custom_name".extra[0].text
execute if data storage main:custom_head {raw_name:""} run data modify storage main:custom_head raw_name set from entity @s Item.components."minecraft:custom_name"

# Abort if no name exists or empty
execute unless data storage main:custom_head raw_name run return 0
execute if data storage main:custom_head {raw_name:""} run return 0

# Abort if still named placeholder
execute if data storage main:custom_head {raw_name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {raw_name:"decorative player head"} run return 0
execute if data storage main:custom_head {raw_name:"\"Decorative Player Head\""} run return 0

# Clean quotes
data modify storage main:custom_head name set from storage main:custom_head raw_name
execute store success score #hasQuote vplus_math run data modify storage main:custom_head test_quote set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote:"\""} run data modify storage main:custom_head name set string storage main:custom_head name 1 -1
execute store success score #hasQuoteEnd vplus_math run data modify storage main:custom_head test_quote_end set string storage main:custom_head name -1 1
execute if data storage main:custom_head {test_quote_end:"\""} run data modify storage main:custom_head name set string storage main:custom_head name 0 -1

# Verify again
execute if data storage main:custom_head {name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {name:""} run return 0

# Check presets
execute if data storage main:custom_head {name:"Giant Honey Dipper"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {name:"giant honey dipper"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {name:"129904"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped

# Apply player profile
function main:mechanic/custom_head/apply_player_profile_dropped with storage main:custom_head
