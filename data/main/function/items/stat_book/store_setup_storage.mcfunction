$execute store success score #s vplus_math if data storage enriched:tracking storage[{obj:"$(obj)"}]
$execute if score #s vplus_math matches 0 run data modify storage enriched:tracking storage append value {obj:"$(obj)",values:[]}
