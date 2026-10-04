# Reschedule maintenance loop to run every 5 seconds (100 ticks)
schedule function main:mechanic/region/clean_loop 100t replace

# Scan all region markers: if block at location is no longer a banner, remove marker
execute as @e[type=marker,tag=vp_region_marker] at @s unless block ~ ~ ~ #minecraft:banners run kill @s
