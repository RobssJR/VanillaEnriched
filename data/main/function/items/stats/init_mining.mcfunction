data modify storage main:items/stats/macro blocks set value 0
function main:items/stats/apply_mining_lore with storage main:items/stats/macro

# Visual and sound feedback for tool awakening
playsound block.smithing_table.use master @s ~ ~ ~ 0.8 1.2
particle wax_off ~ ~1 ~ 0.2 0.2 0.2 0.05 5 normal
