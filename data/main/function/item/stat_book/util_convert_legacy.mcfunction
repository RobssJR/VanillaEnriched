# Get remainder of stat name after 'sb.'
data modify storage enriched:tmp legacy_stat set string storage enriched:tmp newBook.value 3
function main:item/stat_book/util_apply_legacy with storage enriched:tmp
