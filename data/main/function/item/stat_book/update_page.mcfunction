# Append current page to book pages list
data modify storage enriched:tmp book.pages append from storage enriched:tmp book.page
data merge storage enriched:tmp {book:{page:[]}}
scoreboard players set #i vplus_math 0

# If more players remain for this same statistic, start continuation page with header
execute if data storage enriched:tmp array[0] run function main:item/stat_book/header_cont
