# ==============================================================================
# Roleplay Mechanic: Coin Flip (Cara ou Coroa) - Tick Loop
# Executed every tick
# ==============================================================================

# Filter players who dropped a gold nugget while sneaking
execute as @a[scores={vp_drop_gold=1..,vp_sneak=1..}] at @s run function main:mechanic/rp/coin_action

# Reset trigger score for all players
scoreboard players set @a vp_drop_gold 0
