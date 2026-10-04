# Resolve human-readable title
function main:item/stat_book/format_stat_title

# Build top-of-page header
data modify storage enriched:tmp book.page set value []
data modify storage enriched:tmp book.page append value {text: "✦ ", color: "dark_blue", bold: true}
data modify storage enriched:tmp book.tmp_title set value {text: "", color: "gold", bold: true}
data modify storage enriched:tmp book.tmp_title.text set from storage enriched:tmp stat_title
data modify storage enriched:tmp book.page append from storage enriched:tmp book.tmp_title
data modify storage enriched:tmp book.page append value {text: " ✦\n", color: "dark_blue", bold: true}
data modify storage enriched:tmp book.page append value {text: "───────────\n", color: "gray"}
