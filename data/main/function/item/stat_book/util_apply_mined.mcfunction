# Macro: receives $(mined_block)
$data modify storage enriched:tmp newBook.value set value "enriched.mined.$(mined_block)"
$scoreboard objectives add enriched.mined.$(mined_block) mined:$(mined_block)
