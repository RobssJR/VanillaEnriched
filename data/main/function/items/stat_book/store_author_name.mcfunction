# Save signed author name directly under player's UUID
$data remove storage enriched:tracking names[{uuid:$(UUID)}]
$data modify storage enriched:tracking names append value {uuid:$(UUID), name:""}
$data modify storage enriched:tracking names[{uuid:$(UUID)}].name set from storage enriched:tmp author
