# Mark lectern found for raycast tracking
scoreboard players set #found_lectern vplus_math 1

# 1. Check if player is holding a player_head to sculpt from the manual on this lectern
execute if items entity @s weapon.mainhand player_head run function main:mechanic/custom_head/lectern_sculpt
execute unless items entity @s weapon.mainhand player_head if items entity @s weapon.offhand player_head run function main:mechanic/custom_head/lectern_sculpt

# 2. If book has not been converted yet, check if it has the "MCStats" title
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".statBook if data block ~ ~ ~ Book.components."minecraft:written_book_content".title run function main:item/stat_book/book_setup

# 3. If not a stat book, stop
execute unless data block ~ ~ ~ Book.components."minecraft:custom_data".statBook run return 0

# 4. Ensure a tracking marker exists at the lectern exactly at block center
execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=marker,distance=..1,tag=enriched.lectern] run summon marker ~ ~ ~ {Tags:["enriched.lectern"]}

# 5. Update lectern book with latest online player scores and names
execute align xyz run function main:item/stat_book/update_book
