# Revoke advancement immediately so it can trigger again on next use
advancement revoke @s only main:item/stat_book/open_lectern

# Start raycast toward the lectern block (100 steps of 0.05m = 5m reach)
scoreboard players set #steps vplus_math 100
execute anchored eyes positioned ^ ^ ^ anchored feet run function main:item/stat_book/lectern_ray
