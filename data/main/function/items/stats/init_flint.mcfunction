data modify storage main:items/stats/macro fires set value 0
function main:items/stats/apply_flint_lore with storage main:items/stats/macro

playsound block.smithing_table.use master @s ~ ~ ~ 0.8 1.2
particle wax_off ~ ~1 ~ 0.2 0.2 0.2 0.05 5 normal
