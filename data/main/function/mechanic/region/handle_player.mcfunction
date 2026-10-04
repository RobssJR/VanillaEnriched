# Macro: receives $(id) to index individual player memory in storage

# 1. Look for nearest region marker within 40 blocks
execute store success storage main:temp in_region byte 1 if entity @e[type=marker,tag=vp_region_marker,distance=..40,limit=1,sort=nearest]

# 2. Exit Condition: If player is NOT within 40 blocks of any marker
# Clear player's region memory so title re-triggers upon return
$execute if data storage main:temp {in_region: 0b} run data remove storage main:data players.p_$(id).last_region
execute if data storage main:temp {in_region: 0b} run return 0

# 3. Enter / Stay Condition:
# Read CustomName of nearest marker
data modify storage main:temp target_region set from entity @e[type=marker,tag=vp_region_marker,distance=..40,limit=1,sort=nearest] CustomName

# Load currently saved region from player memory
data remove storage main:temp player_saved
$data modify storage main:temp player_saved set from storage main:data players.p_$(id).last_region

# Compare marker region with player memory region
execute store success storage main:temp is_diff byte 1 run data modify storage main:temp player_saved set from storage main:temp target_region

# If DIFFERENT: update memory and trigger discovery notification
$execute if data storage main:temp {is_diff: 1b} run data modify storage main:data players.p_$(id).last_region set from storage main:temp target_region
execute if data storage main:temp {is_diff: 1b} run function main:mechanic/region/enter_new_region
