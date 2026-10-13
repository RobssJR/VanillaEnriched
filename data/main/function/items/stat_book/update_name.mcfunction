# Append rank prefix with podium styling
execute if score #place vplus_math matches 1 run data modify storage enriched:tmp book.page append value {text: "1st ", color: "gold", bold: true}
execute if score #place vplus_math matches 2 run data modify storage enriched:tmp book.page append value {text: "2nd ", color: "gray", bold: true}
execute if score #place vplus_math matches 3 run data modify storage enriched:tmp book.page append value {text: "3rd ", color: "dark_aqua", bold: true}
execute if score #place vplus_math matches 4 run data modify storage enriched:tmp book.page append value {text: "4th ", color: "dark_gray"}
execute if score #place vplus_math matches 5 run data modify storage enriched:tmp book.page append value {text: "5th ", color: "dark_gray"}
execute if score #place vplus_math matches 6 run data modify storage enriched:tmp book.page append value {text: "6th ", color: "dark_gray"}
execute if score #place vplus_math matches 7 run data modify storage enriched:tmp book.page append value {text: "7th ", color: "dark_gray"}
execute if score #place vplus_math matches 8 run data modify storage enriched:tmp book.page append value {text: "8th ", color: "dark_gray"}
execute if score #place vplus_math matches 9 run data modify storage enriched:tmp book.page append value {text: "9th ", color: "dark_gray"}
execute if score #place vplus_math matches 10 run data modify storage enriched:tmp book.page append value {text: "10th ", color: "dark_gray"}
execute if score #place vplus_math matches 11.. run data modify storage enriched:tmp book.page append value {text: "• ", color: "dark_gray"}

# Default Player Name component
data modify storage enriched:tmp book.tmp set value {text: "Player", bold: true, color: "black"}

# Fetch cached player name from storage
$execute if data storage enriched:tracking names[{uuid:$(uuid)}].name unless data storage enriched:tracking {names:[{uuid:$(uuid),name:""}]} run data modify storage enriched:tmp book.tmp.text set from storage enriched:tracking names[{uuid:$(uuid)}].name

# Secret mode check
execute if score allowSecret enriched.settings matches 1..2 if score #sec vplus_math matches 1 run data modify storage enriched:tmp book.tmp set value {text: "???", bold: true, color: "dark_gray"}
data modify storage enriched:tmp book.page append from storage enriched:tmp book.tmp
