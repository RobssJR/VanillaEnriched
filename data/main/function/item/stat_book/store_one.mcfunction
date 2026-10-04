$execute store success score #exists vplus_math if data storage enriched:tracking storage[{obj:"$(obj)"}].values[{uuid:$(uuid)}]
$execute if score #exists vplus_math matches 0 run data modify storage enriched:tracking storage[{obj:"$(obj)"}].values append value {uuid:$(uuid), value:0}
$scoreboard players add @s $(obj) 0
$execute store result storage enriched:tracking storage[{obj:"$(obj)"}].values[{uuid:$(uuid)}].value int 1 run scoreboard players get @s $(obj)
