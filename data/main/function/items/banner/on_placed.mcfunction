# 1. Revoke advancement so it can trigger again
advancement revoke @s only main:items/banner/place_banner

# 2. Locate newly placed banner:
execute if block ~ ~ ~ #minecraft:banners run return run function main:items/banner/create_marker

# Raycast forward from player eye level
execute at @s anchored eyes positioned ^ ^ ^0.3 run function main:items/banner/find_banner_step {steps:20}
