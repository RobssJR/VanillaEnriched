# Initialize core scoreboards
scoreboard objectives add vplus_math dummy
scoreboard objectives add vplus_state dummy
scoreboard objectives add vplus_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add vp_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add vp_drop_gold minecraft.dropped:minecraft.gold_nugget
scoreboard objectives add vp_temp dummy
scoreboard objectives add vp_water_sat dummy

scoreboard players set .paused vplus_state 0

# Mathematical Constants Initialization
scoreboard players set .60 vplus_math 60
scoreboard players set .1000 vplus_math 1000
scoreboard players set .24000 vplus_math 24000
scoreboard players set .28 vplus_math 28
scoreboard players set .112 vplus_math 112
scoreboard players set .-1 vplus_math -1
scoreboard players set .tick_20t vplus_math 0
scoreboard players set .last_minute vplus_math -1
scoreboard players set .color_timer vplus_math 0
scoreboard players set .rainbow_idx vplus_math 0

# Setup safe container block for item modification (safe, chunkloaded, at y=319)
execute in minecraft:overworld run forceload add 0 0
execute in minecraft:overworld run setblock 0 319 0 minecraft:barrel keep
execute in minecraft:overworld run item replace block 0 319 0 container.0 with minecraft:air
execute in minecraft:overworld run item replace block 0 319 0 container.1 with minecraft:air

# Region System Initialization (Scoreboards & Scheduled Loops)
scoreboard objectives add vp_player_id dummy
schedule function main:items/banner/tracker_loop 20t replace
schedule function main:items/banner/clean_loop 100t replace

# Custom Head Recipes
recipe take @a minecraft:player_head
recipe give @a main:decorative_player_head

# Sponge Thermal Drying Initialization
advancement revoke @a only main:items/sponge_dry/place_wet_sponge
advancement revoke @a only main:items/sponge_dry/place_magma_block

# Tool Statistics Tracking Initialization
scoreboard objectives add ve_u_w_pick minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add ve_u_s_pick minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add ve_u_i_pick minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add ve_u_g_pick minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add ve_u_d_pick minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add ve_u_n_pick minecraft.used:minecraft.netherite_pickaxe

scoreboard objectives add ve_u_w_shov minecraft.used:minecraft.wooden_shovel
scoreboard objectives add ve_u_s_shov minecraft.used:minecraft.stone_shovel
scoreboard objectives add ve_u_i_shov minecraft.used:minecraft.iron_shovel
scoreboard objectives add ve_u_g_shov minecraft.used:minecraft.golden_shovel
scoreboard objectives add ve_u_d_shov minecraft.used:minecraft.diamond_shovel
scoreboard objectives add ve_u_n_shov minecraft.used:minecraft.netherite_shovel

scoreboard objectives add ve_u_w_axe minecraft.used:minecraft.wooden_axe
scoreboard objectives add ve_u_s_axe minecraft.used:minecraft.stone_axe
scoreboard objectives add ve_u_i_axe minecraft.used:minecraft.iron_axe
scoreboard objectives add ve_u_g_axe minecraft.used:minecraft.golden_axe
scoreboard objectives add ve_u_d_axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add ve_u_n_axe minecraft.used:minecraft.netherite_axe

scoreboard objectives add ve_u_w_hoe minecraft.used:minecraft.wooden_hoe
scoreboard objectives add ve_u_s_hoe minecraft.used:minecraft.stone_hoe
scoreboard objectives add ve_u_i_hoe minecraft.used:minecraft.iron_hoe
scoreboard objectives add ve_u_g_hoe minecraft.used:minecraft.golden_hoe
scoreboard objectives add ve_u_d_hoe minecraft.used:minecraft.diamond_hoe
scoreboard objectives add ve_u_n_hoe minecraft.used:minecraft.netherite_hoe

scoreboard objectives add ve_stat_blocks dummy
scoreboard objectives add ve_stat_timer dummy
scoreboard objectives add ve_stat_slot dummy
scoreboard objectives add ve_stat_last_slot dummy

# Utility Tools Criteria
scoreboard objectives add ve_u_shears minecraft.used:minecraft.shears
scoreboard objectives add ve_u_flint minecraft.used:minecraft.flint_and_steel
scoreboard objectives add ve_u_brush minecraft.used:minecraft.brush
scoreboard objectives add ve_u_fish minecraft.custom:minecraft.fish_caught

# Player Lifetime Stats: Play Time
scoreboard objectives add ve_p_play_time minecraft.custom:minecraft.play_time

# Player Lifetime Stats: Movement Distance
scoreboard objectives add ve_m_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add ve_m_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ve_m_swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add ve_m_aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add ve_m_fly minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add ve_m_boat minecraft.custom:minecraft.boat_one_cm
scoreboard objectives add ve_m_horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add ve_m_minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add ve_m_strider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add ve_m_pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add ve_m_crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add ve_m_fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add ve_m_climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add ve_m_w_water minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add ve_m_u_water minecraft.custom:minecraft.walk_under_water_one_cm

# Internal State Scoreboards
scoreboard objectives add ve_dist_m dummy
scoreboard objectives add ve_dist_last dummy
scoreboard objectives add ve_clock_min dummy
scoreboard objectives add ve_compass_timer dummy

# Math Constants
scoreboard players set .24 vplus_math 24
scoreboard players set .60 vplus_math 60
scoreboard players set .100 vplus_math 100
scoreboard players set .1000 vplus_math 1000
scoreboard players set .1200 vplus_math 1200

# Synchronize historical player statistics
function main:items/stats/sync_historical_stats

advancement revoke @a only main:items/stats/kill_entity

# Notify players of successful load
tellraw @a {"text":"[Vanilla Enriched] Systems Successfully Loaded!","color":"green"}