# Input: .sq (vplus_math)
# Output: .sqrt (vplus_math)
scoreboard players set .sqrt vplus_math 0
execute if score .sq vplus_math matches 1.. run scoreboard players set .temp1 vplus_math 1
execute if score .sq vplus_math matches 1.. run scoreboard players set .temp2 vplus_math 0

execute if score .sq vplus_math matches 1.. run scoreboard players operation .temp1 vplus_math += .sq vplus_math
execute if score .sq vplus_math matches 1.. run scoreboard players operation .temp1 vplus_math /= .2 vplus_math

execute if score .sq vplus_math matches 1.. run function main:backend/math/sqrt_loop
