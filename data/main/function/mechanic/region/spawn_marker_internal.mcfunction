# 1. Read custom name from banner Block Entity (supports custom_name and CustomName)
data remove storage main:temp banner_name
execute store success storage main:temp has_name byte 1 run data modify storage main:temp banner_name set from block ~ ~ ~ custom_name
execute if data storage main:temp {has_name: 0b} run execute store success storage main:temp has_name byte 1 run data modify storage main:temp banner_name set from block ~ ~ ~ CustomName

# 2. If banner has no custom anvil name, abort
execute if data storage main:temp {has_name: 0b} run return 0

# 3. Prevent duplicate markers at the same location
execute if entity @e[type=marker,tag=vp_region_marker,distance=..0.8] run return 0

# 4. Summon marker at exact block coordinates
summon minecraft:marker ~ ~ ~ {Tags:["vp_region_marker"]}

# 5. Copy custom name to marker's CustomName
data modify entity @e[type=marker,tag=vp_region_marker,distance=..0.8,limit=1,sort=nearest] CustomName set from storage main:temp banner_name

# 6. Clean temporary storage
data remove storage main:temp has_name
data remove storage main:temp banner_name
