# Bail if already transformed
execute if data entity @s Item.components."minecraft:custom_data".head_applied run return 0

# 1. Check for nearby dropped book (written_book or writable_book)
data remove storage main:custom_head has_book
execute at @s as @e[type=item,distance=..1.5,limit=1] if items entity @s contents written_book run function main:mechanic/custom_head/extract_dropped_book
execute unless data storage main:custom_head has_book at @s as @e[type=item,distance=..1.5,limit=1] if items entity @s contents writable_book run function main:mechanic/custom_head/extract_dropped_book
execute if data storage main:custom_head {has_book: 1b} run return run function main:mechanic/custom_head/apply_book_head_dropped

# 2. For anvil player name transformation, verify can_transform flag exists
execute unless data entity @s Item.components."minecraft:custom_data".can_transform run return 0

# 3. Reset storage
data remove storage main:custom_head raw_name
data remove storage main:custom_head name

# 4. Extract custom name
data modify storage main:custom_head raw_name set from entity @s Item.components."minecraft:custom_name"
execute if data storage main:custom_head raw_name.text run data modify storage main:custom_head raw_name set from storage main:custom_head raw_name.text
execute if data storage main:custom_head raw_name.extra[0].text run data modify storage main:custom_head raw_name set from storage main:custom_head raw_name.extra[0].text

# 5. Abort if no name exists or empty
execute unless data storage main:custom_head raw_name run return 0
execute if data storage main:custom_head {raw_name:""} run return 0

# 6. Abort if still named placeholder
execute if data storage main:custom_head {raw_name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {raw_name:"decorative player head"} run return 0
execute if data storage main:custom_head {raw_name:"\"Decorative Player Head\""} run return 0
execute if data storage main:custom_head {raw_name:"'Decorative Player Head'"} run return 0

# 7. Clean leading quotes if present
data modify storage main:custom_head name set from storage main:custom_head raw_name
execute store success score #hasQuote vplus_math run data modify storage main:custom_head test_quote set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote:"\""} run data modify storage main:custom_head name set string storage main:custom_head name 1

execute store success score #hasQuoteS vplus_math run data modify storage main:custom_head test_quote_s set string storage main:custom_head name 0 1
execute if data storage main:custom_head {test_quote_s:"'"} run data modify storage main:custom_head name set string storage main:custom_head name 1

# 8. Verify again
execute if data storage main:custom_head {name:"Decorative Player Head"} run return 0
execute if data storage main:custom_head {name:"decorative player head"} run return 0
execute if data storage main:custom_head {name:""} run return 0

# 9. Apply player profile
function main:mechanic/custom_head/apply_player_profile_dropped
