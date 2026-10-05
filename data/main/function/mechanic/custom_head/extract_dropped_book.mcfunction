# Reset temporary variables
data remove storage main:custom_head book_page
data remove storage main:custom_head head_name
data remove storage main:custom_head has_book

# 1. Extract page 1 (Base64) from written_book or writable_book
# From writable_book
data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:writable_book_content".pages[0].raw
data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:writable_book_content".pages[1].raw

# From written_book (using macro)
execute if data entity @s Item.components."minecraft:written_book_content".pages[0] run function main:mechanic/custom_head/read_written_book_page with entity @s Item.components."minecraft:written_book_content".pages[0]
execute if data entity @s Item.components."minecraft:written_book_content".pages[1] run function main:mechanic/custom_head/read_written_book_name with entity @s Item.components."minecraft:written_book_content".pages[1]

# Direct fallbacks
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:written_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:written_book_content".pages[0].text
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:written_book_content".pages[0]
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:writable_book_content".pages[0]

execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:written_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:written_book_content".pages[1].text
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:written_book_content".pages[1]
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:writable_book_content".pages[1]

# Abort if no content on page 1
execute unless data storage main:custom_head book_page run return 0
execute if data storage main:custom_head {book_page:""} run return 0

# Clean quotes on Base64
execute store success score #q vplus_math run data modify storage main:custom_head tq set string storage main:custom_head book_page 0 1
execute if data storage main:custom_head {tq:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 1 -1
execute store success score #qe vplus_math run data modify storage main:custom_head tqe set string storage main:custom_head book_page -1 1
execute if data storage main:custom_head {tqe:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 0 -1

# Clean quotes on custom name
execute store success score #nq vplus_math run data modify storage main:custom_head tnq set string storage main:custom_head head_name 0 1
execute if data storage main:custom_head {tnq:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 1 -1
execute store success score #nqe vplus_math run data modify storage main:custom_head tnqe set string storage main:custom_head head_name -1 1
execute if data storage main:custom_head {tnqe:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 0 -1

# Mark valid book found
data modify storage main:custom_head has_book set value 1b
