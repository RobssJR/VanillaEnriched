# Remove existing entry if any
$data remove storage enriched:tracking names[{uuid:$(UUID)}]

# Build new entry and append directly to storage
data modify storage enriched:tmp new_name_entry set value {name:""}
$data modify storage enriched:tmp new_name_entry.uuid set value $(UUID)
data modify storage enriched:tmp new_name_entry.name set from storage enriched:tmp name
data modify storage enriched:tracking names append from storage enriched:tmp new_name_entry
