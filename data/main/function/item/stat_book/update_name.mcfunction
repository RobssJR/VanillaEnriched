# Append rank prefix with podium styling
execute if score #place vplus_math matches 1 run data modify storage enriched:tmp book.page append value {text: "1º ", color: "gold", bold: true}
execute if score #place vplus_math matches 2 run data modify storage enriched:tmp book.page append value {text: "2º ", color: "gray", bold: true}
execute if score #place vplus_math matches 3 run data modify storage enriched:tmp book.page append value {text: "3º ", color: "dark_aqua", bold: true}
execute if score #place vplus_math matches 4 run data modify storage enriched:tmp book.page append value {text: "4º ", color: "dark_gray"}
execute if score #place vplus_math matches 5 run data modify storage enriched:tmp book.page append value {text: "5º ", color: "dark_gray"}
execute if score #place vplus_math matches 6 run data modify storage enriched:tmp book.page append value {text: "6º ", color: "dark_gray"}
execute if score #place vplus_math matches 7 run data modify storage enriched:tmp book.page append value {text: "7º ", color: "dark_gray"}
execute if score #place vplus_math matches 8 run data modify storage enriched:tmp book.page append value {text: "8º ", color: "dark_gray"}
execute if score #place vplus_math matches 9 run data modify storage enriched:tmp book.page append value {text: "9º ", color: "dark_gray"}
execute if score #place vplus_math matches 10 run data modify storage enriched:tmp book.page append value {text: "10º ", color: "dark_gray"}
execute if score #place vplus_math matches 11.. run data modify storage enriched:tmp book.page append value {text: "• ", color: "dark_gray"}

# Default Player Name component
data modify storage enriched:tmp book.tmp set value {text: "Jogador", bold: true, color: "black"}

# Fetch cached player name from storage
$execute if data storage enriched:tracking names[{uuid:$(uuid)}].name unless data storage enriched:tracking {names:[{uuid:$(uuid),name:""}]} run data modify storage enriched:tmp book.tmp.text set from storage enriched:tracking names[{uuid:$(uuid)}].name

# Secret mode check
execute if score allowSecret enriched.settings matches 1..2 if score #sec vplus_math matches 1 run data modify storage enriched:tmp book.tmp set value {text: "???", bold: true, color: "dark_gray"}
data modify storage enriched:tmp book.page append from storage enriched:tmp book.tmp
