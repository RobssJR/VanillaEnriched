# 1. Reset storage
data remove storage main:custom_head raw_name
data remove storage main:custom_head name

# 2. Extract custom_name (support both direct Slot:0b and array index 0)
data modify storage main:custom_head raw_name set from block 0 319 0 Items[{Slot:0b}].components."minecraft:custom_name"
execute unless data storage main:custom_head raw_name run data modify storage main:custom_head raw_name set from block 0 319 0 Items[0].components."minecraft:custom_name"

# 3. If raw_name is a compound with .text, extract the inner text string
execute if data storage main:custom_head raw_name.text run data modify storage main:custom_head raw_name set from storage main:custom_head raw_name.text
execute if data storage main:custom_head raw_name.extra[0].text run data modify storage main:custom_head raw_name set from storage main:custom_head raw_name.extra[0].text

# 4. Abort if no name exists or empty
execute unless data storage main:custom_head raw_name run return 0
execute if data storage main:custom_head {raw_name:""} run return 0

# 5. Abort if still named placeholder
execute if data storage main:custom_head {raw_name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {raw_name:"decorative player head"} run return 0
execute if data storage main:custom_head {raw_name:"\"Decorative Player Head\""} run return 0
execute if data storage main:custom_head {raw_name:"'Decorative Player Head'"} run return 0

# 6. Clean leading quotes if present
data modify storage main:custom_head name set from storage main:custom_head raw_name
execute store success score #hasQuote vplus_math run data modify storage main:custom_head test_quote set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote:"\""} run data modify storage main:custom_head name set string storage main:custom_head name 1

execute store success score #hasQuoteS vplus_math run data modify storage main:custom_head test_quote_s set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote_s:"'"} run data modify storage main:custom_head name set string storage main:custom_head name 1

# 7. Verify again after cleaning quotes
execute if data storage main:custom_head {name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {name:"decorative player head"} run return 0
execute if data storage main:custom_head {name:""} run return 0

# 8. Transform to player profile
function main:mechanic/custom_head/apply_player_profile

