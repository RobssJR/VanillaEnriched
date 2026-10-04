# Remove existing entry if any (clears out previous empty records)
$data remove storage enriched:tracking names[{uuid:$(UUID)}]

# Save resolved name under player's UUID
$data modify storage enriched:tracking names append value {uuid:$(UUID), name:""}
$data modify storage enriched:tracking names[{uuid:$(UUID)}].name set from storage enriched:tmp name
