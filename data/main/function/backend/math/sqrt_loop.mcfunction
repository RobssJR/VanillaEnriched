scoreboard players operation .temp2 vplus_math = .sq vplus_math
scoreboard players operation .temp2 vplus_math /= .temp1 vplus_math
scoreboard players operation .temp2 vplus_math += .temp1 vplus_math
scoreboard players operation .temp2 vplus_math /= .2 vplus_math

execute if score .temp2 vplus_math < .temp1 vplus_math run scoreboard players operation .temp1 vplus_math = .temp2 vplus_math
execute if score .temp2 vplus_math < .temp1 vplus_math run function main:backend/math/sqrt_loop

# Output result
scoreboard players operation .sqrt vplus_math = .temp1 vplus_math
