# 1. Initialize renamed items in main hand that are not yet tracked
execute if score .color_timer vplus_math matches 0 as @a if items entity @s weapon.mainhand *[minecraft:custom_name] unless data entity @s SelectedItem.components."minecraft:custom_data".ve_tracked run function main:items/stats/check_init

# 2. Check for tool usage (block breaks & utility actions)
execute as @a[scores={ve_u_d_pick=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_n_pick=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_i_pick=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_g_pick=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_s_pick=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_w_pick=1..}] run function main:items/stats/tool_used

execute as @a[scores={ve_u_d_shov=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_n_shov=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_i_shov=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_g_shov=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_s_shov=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_w_shov=1..}] run function main:items/stats/tool_used

execute as @a[scores={ve_u_d_axe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_n_axe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_i_axe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_g_axe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_s_axe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_w_axe=1..}] run function main:items/stats/tool_used

execute as @a[scores={ve_u_d_hoe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_n_hoe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_i_hoe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_g_hoe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_s_hoe=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_w_hoe=1..}] run function main:items/stats/tool_used

execute as @a[scores={ve_u_shears=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_flint=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_brush=1..}] run function main:items/stats/tool_used
execute as @a[scores={ve_u_fish=1..}] run function main:items/stats/tool_used

# 3. Compass distance synchronization (Smooth update while held in mainhand)
execute if score .tick_20t vplus_math matches 0 as @a if items entity @s weapon.mainhand #main:compass[minecraft:custom_name] run function main:items/stats/update_compass

# 4. Clock time synchronization (Updates every minute while held in mainhand)
execute if score .tick_20t vplus_math matches 0 as @a if items entity @s weapon.mainhand #main:clock[minecraft:custom_name] run function main:items/stats/update_clock

# 5. Check for slot changes while actions are pending
execute as @a run function main:items/stats/check_slot_change

# 6. Debounce timers for smooth gameplay
execute as @a[scores={ve_stat_timer=1..}] run scoreboard players remove @s ve_stat_timer 1
execute as @a[scores={ve_stat_timer=0,ve_stat_blocks=1..}] run function main:items/stats/flush_blocks
