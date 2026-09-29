# Retrieve absolute sun time
execute store result score .raw_time vplus_math run time query time

# Calculate Total Days
scoreboard players operation .total_days vplus_math = .raw_time vplus_math
scoreboard players operation .total_days vplus_math /= .24000 vplus_math

# Calculate current day ticks (0 - 23999)
scoreboard players operation .ticks vplus_math = .raw_time vplus_math
scoreboard players operation .ticks vplus_math %= .24000 vplus_math

# --- TIME CALCULATION ---
# Add offset of 6000 ticks so tick 0 becomes 6000 (06:00)
scoreboard players operation .time vplus_math = .ticks vplus_math
scoreboard players add .time vplus_math 6000

# Wrap around 24000 (if time >= 24000)
scoreboard players operation .time vplus_math %= .24000 vplus_math

# Calculate Hour = .time / 1000
scoreboard players operation .hour vplus_math = .time vplus_math
scoreboard players operation .hour vplus_math /= .1000 vplus_math

# Calculate Minute = ((.time % 1000) * 60) / 1000
scoreboard players operation .minute vplus_math = .time vplus_math
scoreboard players operation .minute vplus_math %= .1000 vplus_math
scoreboard players operation .minute vplus_math *= .60 vplus_math
scoreboard players operation .minute vplus_math /= .1000 vplus_math

# --- DATE CALCULATION ---
scoreboard players operation .year vplus_math = .total_days vplus_math
scoreboard players operation .year vplus_math /= .112 vplus_math
scoreboard players add .year vplus_math 1

scoreboard players operation .doy vplus_math = .total_days vplus_math
scoreboard players operation .doy vplus_math %= .112 vplus_math

scoreboard players operation .season vplus_math = .doy vplus_math
scoreboard players operation .season vplus_math /= .28 vplus_math

scoreboard players operation .day_of_season vplus_math = .doy vplus_math
scoreboard players operation .day_of_season vplus_math %= .28 vplus_math
scoreboard players add .day_of_season vplus_math 1
