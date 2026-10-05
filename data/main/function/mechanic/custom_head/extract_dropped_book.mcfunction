# Reset temporary variables
data remove storage main:custom_head book_page
data remove storage main:custom_head head_name
data remove storage main:custom_head book_title
data remove storage main:custom_head has_book

# Extract page 1 (Base64) from written_book or writable_book
data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:written_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:written_book_content".pages[0].text
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:written_book_content".pages[0]

execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:writable_book_content".pages[0].raw
execute unless data storage main:custom_head book_page run data modify storage main:custom_head book_page set from entity @s Item.components."minecraft:writable_book_content".pages[0]

# Unpack compound if book_page ended up as a compound
execute if data storage main:custom_head book_page.raw run data modify storage main:custom_head book_page set from storage main:custom_head book_page.raw
execute if data storage main:custom_head book_page.text run data modify storage main:custom_head book_page set from storage main:custom_head book_page.text

# Abort if no content on page 1
execute unless data storage main:custom_head book_page run return 0
execute if data storage main:custom_head {book_page:""} run return 0

# Extract title if written book
data modify storage main:custom_head book_title set from entity @s Item.components."minecraft:written_book_content".title.raw
execute unless data storage main:custom_head book_title run data modify storage main:custom_head book_title set from entity @s Item.components."minecraft:written_book_content".title
execute if data storage main:custom_head book_title.raw run data modify storage main:custom_head book_title set from storage main:custom_head book_title.raw

# Check prefix of page 1
execute store success score #isBase64 vplus_math run data modify storage main:custom_head test_ey set string storage main:custom_head book_page 0 2

# Validate that book is intended for custom head (starts with "ey" or has valid head title)
scoreboard players set #validBook vplus_math 0
execute if data storage main:custom_head {test_ey:"ey"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"CustomHead"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"customhead"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Custom Head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"custom head"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Cabeca"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"cabeca"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"Textura"} run scoreboard players set #validBook vplus_math 1
execute if data storage main:custom_head {book_title:"textura"} run scoreboard players set #validBook vplus_math 1
execute if score #validBook vplus_math matches 0 run return 0

# Clean surrounding quotes on Base64
execute store success score #hasQuote vplus_math run data modify storage main:custom_head test_quote set string storage main:custom_head book_page 0 1
execute if data storage main:custom_head {test_quote:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 1 -1
execute store success score #hasQuoteEnd vplus_math run data modify storage main:custom_head test_quote_end set string storage main:custom_head book_page -1 1
execute if data storage main:custom_head {test_quote_end:"\""} run data modify storage main:custom_head book_page set string storage main:custom_head book_page 0 -1

# Extract page 2 (custom name)
data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:written_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:written_book_content".pages[1].text
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:written_book_content".pages[1]

execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:writable_book_content".pages[1].raw
execute unless data storage main:custom_head head_name run data modify storage main:custom_head head_name set from entity @s Item.components."minecraft:writable_book_content".pages[1]

# Unpack compound if head_name ended up as a compound
execute if data storage main:custom_head head_name.raw run data modify storage main:custom_head head_name set from storage main:custom_head head_name.raw
execute if data storage main:custom_head head_name.text run data modify storage main:custom_head head_name set from storage main:custom_head head_name.text

# Clean quotes on custom name
execute store success score #hasNameQ vplus_math run data modify storage main:custom_head test_nq set string storage main:custom_head head_name 0 1
execute if data storage main:custom_head {test_nq:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 1 -1
execute store success score #hasNameQE vplus_math run data modify storage main:custom_head test_nqe set string storage main:custom_head head_name -1 1
execute if data storage main:custom_head {test_nqe:"\""} run data modify storage main:custom_head head_name set string storage main:custom_head head_name 0 -1

# Set flag indicating valid book found
data modify storage main:custom_head has_book set value 1b
