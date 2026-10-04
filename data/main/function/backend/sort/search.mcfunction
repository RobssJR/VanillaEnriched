# Sorts an array in storage by an attribute (highest first)
$data modify storage sort:search array set from $(type) $(target) $(targetPath)
data merge storage sort:search {result:[]}
data merge storage sort:search {attribute:"",scale:1}
$data modify storage sort:search attribute set value "$(attribute)"

execute store result score #n vplus_math run data get storage sort:search array
execute if score #n vplus_math matches 1.. run function main:backend/sort/search_run with storage sort:search
$data modify $(type) $(target) $(targetPath) set from storage sort:search result