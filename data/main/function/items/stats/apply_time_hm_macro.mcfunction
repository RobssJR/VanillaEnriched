$data modify storage main:items/stats/macro time_str set value "$(total_hrs)h $(rem_m)m"
function main:items/stats/apply_clock_stat_lore with storage main:items/stats/macro
