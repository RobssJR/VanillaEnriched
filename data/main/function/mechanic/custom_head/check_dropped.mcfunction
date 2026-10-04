# Verify that dropped head entity has the can_transform flag
execute unless data entity @s Item.components."minecraft:custom_data".can_transform run return 0

# 1. Reset storage
data remove storage main:custom_head raw_name
data remove storage main:custom_head name

# 2. Extract custom name
data modify storage main:custom_head raw_name set from entity @s Item.components."minecraft:custom_name"
execute if data storage main:custom_head raw_name.text run data modify storage main:custom_head raw_name set from storage main:custom_head raw_name.text
execute if data storage main:custom_head raw_name.extra[0].text run data modify storage main:custom_head raw_name set from storage main:custom_head raw_name.extra[0].text

# 3. Abort if no name exists or empty
execute unless data storage main:custom_head raw_name run return 0
execute if data storage main:custom_head {raw_name:""} run return 0

# 4. Abort if still named placeholder
execute if data storage main:custom_head {raw_name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {raw_name:"decorative player head"} run return 0
execute if data storage main:custom_head {raw_name:"\"Decorative Player Head\""} run return 0
execute if data storage main:custom_head {raw_name:"'Decorative Player Head'"} run return 0

# 5. Clean quotes
data modify storage main:custom_head name set from storage main:custom_head raw_name
execute store success score #hasQuote vplus_math run data modify storage main:custom_head test_quote set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote:"\""} run data modify storage main:custom_head name set string storage main:custom_head name 1 -1
execute store success score #hasQuoteEnd vplus_math run data modify storage main:custom_head test_quote_end set string storage main:custom_head name -1 1
execute if data storage main:custom_head {test_quote_end:"\""} run data modify storage main:custom_head name set string storage main:custom_head name 0 -1

execute store success score #hasQuoteS vplus_math run data modify storage main:custom_head test_quote_s set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote_s:"'"} run data modify storage main:custom_head name set string storage main:custom_head name 1 -1
execute store success score #hasQuoteES vplus_math run data modify storage main:custom_head test_quote_es set string storage main:custom_head name -1 1
execute if data storage main:custom_head {test_quote_es:"'"} run data modify storage main:custom_head name set string storage main:custom_head name 0 -1

# 6. Verify again
execute if data storage main:custom_head {name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {name:"decorative player head"} run return 0
execute if data storage main:custom_head {name:""} run return 0

# 7. Check presets
execute if data storage main:custom_head {name:"Giant Honey Dipper"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {name:"giant honey dipper"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {name:"129904"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {raw_name:"Giant Honey Dipper"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {raw_name:"giant honey dipper"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped
execute if data storage main:custom_head {raw_name:"129904"} run return run function main:mechanic/custom_head/preset_honey_dipper_dropped

# 8. Apply player profile
function main:mechanic/custom_head/apply_player_profile_dropped
