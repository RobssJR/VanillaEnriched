# Increment position before printing name
scoreboard players add #i vplus_math 1
scoreboard players add #place vplus_math 1

# Print Rank + Player Name
data modify storage enriched:tmp book.uuid set from storage enriched:tmp array[0].uuid
function main:item/stat_book/update_name with storage enriched:tmp book
data modify storage enriched:tmp book.page append value "\n"

# Indented score display
data modify storage enriched:tmp book.page append value {text: "   » ", color: "dark_gray"}
data modify storage enriched:tmp book.tmp set value {italic:true, text:"", color: "dark_blue"}
data modify storage enriched:tmp book.tmp.text set string storage enriched:tmp array[0].value
execute if score allowSecret enriched.settings matches 1..2 if score #sec vplus_math matches 2 run data modify storage enriched:tmp book.tmp.text set value "???"
data modify storage enriched:tmp book.page append from storage enriched:tmp book.tmp

# Line break between entries
data modify storage enriched:tmp book.page append value "\n"
data remove storage enriched:tmp array[0]

# Check pagination
execute if score #maxPerPage vplus_math <= #i vplus_math run function main:item/stat_book/update_page
execute if score #n vplus_math > #place vplus_math run function main:item/stat_book/update_recursive
