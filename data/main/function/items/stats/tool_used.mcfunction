# Harvest scores from all 24 mining tools into ve_stat_blocks
scoreboard players operation @s ve_stat_blocks += @s ve_u_d_pick
scoreboard players set @s ve_u_d_pick 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_n_pick
scoreboard players set @s ve_u_n_pick 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_i_pick
scoreboard players set @s ve_u_i_pick 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_g_pick
scoreboard players set @s ve_u_g_pick 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_s_pick
scoreboard players set @s ve_u_s_pick 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_w_pick
scoreboard players set @s ve_u_w_pick 0

scoreboard players operation @s ve_stat_blocks += @s ve_u_d_shov
scoreboard players set @s ve_u_d_shov 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_n_shov
scoreboard players set @s ve_u_n_shov 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_i_shov
scoreboard players set @s ve_u_i_shov 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_g_shov
scoreboard players set @s ve_u_g_shov 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_s_shov
scoreboard players set @s ve_u_s_shov 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_w_shov
scoreboard players set @s ve_u_w_shov 0

scoreboard players operation @s ve_stat_blocks += @s ve_u_d_axe
scoreboard players set @s ve_u_d_axe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_n_axe
scoreboard players set @s ve_u_n_axe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_i_axe
scoreboard players set @s ve_u_i_axe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_g_axe
scoreboard players set @s ve_u_g_axe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_s_axe
scoreboard players set @s ve_u_s_axe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_w_axe
scoreboard players set @s ve_u_w_axe 0

scoreboard players operation @s ve_stat_blocks += @s ve_u_d_hoe
scoreboard players set @s ve_u_d_hoe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_n_hoe
scoreboard players set @s ve_u_n_hoe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_i_hoe
scoreboard players set @s ve_u_i_hoe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_g_hoe
scoreboard players set @s ve_u_g_hoe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_s_hoe
scoreboard players set @s ve_u_s_hoe 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_w_hoe
scoreboard players set @s ve_u_w_hoe 0

# Harvest scores from specialized utility tools
scoreboard players operation @s ve_stat_blocks += @s ve_u_shears
scoreboard players set @s ve_u_shears 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_flint
scoreboard players set @s ve_u_flint 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_brush
scoreboard players set @s ve_u_brush 0
scoreboard players operation @s ve_stat_blocks += @s ve_u_fish
scoreboard players set @s ve_u_fish 0

# If mainhand item is not custom named, discard score and return
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run scoreboard players set @s ve_stat_blocks 0
execute unless items entity @s weapon.mainhand *[minecraft:custom_name] run return 0

# If mainhand item is not a recognized stat tool, discard score and return
execute unless items entity @s weapon.mainhand #main:stat_tools run scoreboard players set @s ve_stat_blocks 0
execute unless items entity @s weapon.mainhand #main:stat_tools run return 0

# If tool is un-tracked, initialize it first
execute unless data entity @s SelectedItem.components."minecraft:custom_data".ve_tracked run function main:items/stats/check_init

# Record current inventory slot to detect mid-action slot swaps
execute store result score @s ve_stat_last_slot run data get entity @s SelectedItemSlot

# Set 8-tick debounce (~0.4s) before writing lore to keep gameplay smooth
scoreboard players set @s ve_stat_timer 8
