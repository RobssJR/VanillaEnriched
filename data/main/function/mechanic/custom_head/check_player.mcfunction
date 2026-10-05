# 1. Check for Book-based Custom Head transformation (holding Decorative Head + Book in hands)
execute if items entity @s weapon.mainhand player_head[custom_data~{can_transform:"1b"}] if items entity @s weapon.offhand written_book run function main:mechanic/custom_head/apply_book_head
execute if items entity @s weapon.mainhand player_head[custom_data~{can_transform:"1b"}] if items entity @s weapon.offhand writable_book run function main:mechanic/custom_head/apply_book_head
execute if items entity @s weapon.offhand player_head[custom_data~{can_transform:"1b"}] if items entity @s weapon.mainhand written_book run function main:mechanic/custom_head/apply_book_head
execute if items entity @s weapon.offhand player_head[custom_data~{can_transform:"1b"}] if items entity @s weapon.mainhand writable_book run function main:mechanic/custom_head/apply_book_head

# 2. Quick bail if player carries no player_head in inventory
execute unless items entity @s hotbar.* minecraft:player_head unless items entity @s inventory.* minecraft:player_head unless items entity @s weapon.* minecraft:player_head run return 0

# 3. Run slot checks for anvil-renamed heads
function main:mechanic/custom_head/main
