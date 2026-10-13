data modify storage enriched:tmp sortAll set from storage enriched:tracking storage
execute store result score #sortAll vplus_math run data get storage enriched:tmp sortAll
function main:items/stat_book/sort_all_step
