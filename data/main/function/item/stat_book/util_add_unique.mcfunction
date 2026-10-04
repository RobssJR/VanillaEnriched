# Only adds a given value to an NBT storage array if it is not present yet
$execute store success score #s vplus_math if data storage $(location) {$(path):[$(value)]}
$execute if score #s vplus_math matches 0 run data modify storage $(location) $(path) append value $(value)
