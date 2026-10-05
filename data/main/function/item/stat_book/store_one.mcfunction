# Prepare score entry
data modify storage enriched:tmp player_value set value {value:0}
$data modify storage enriched:tmp player_value.uuid set value $(uuid)

# Read score from scoreboard
$scoreboard players add @s $(obj) 0
$execute store result storage enriched:tmp player_value.value int 1 run scoreboard players get @s $(obj)

# Update player entry in tracking storage (remove existing, then append updated)
$data remove storage enriched:tracking storage[{obj:"$(obj)"}].values[{uuid:$(uuid)}]
$data modify storage enriched:tracking storage[{obj:"$(obj)"}].values append from storage enriched:tmp player_value
