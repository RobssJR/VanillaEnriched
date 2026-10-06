# Tag guide entity and join no-collision team
tag @s add main.guide
team join main.guide @s

# Configure invisible, silent pathfinder with authentic collision size (scale 0.95)
data merge entity @s {Silent:1b,Invulnerable:1b,NoDrops:1b,Offers:{Recipes:[]},attributes:[{id:"scale",base:0.95},{id:"movement_speed",base:0.55}],active_effects:[{id:"invisibility",duration:-1,show_particles:false}]}

# Enforce base movement speed set to exactly 0.55
attribute @s movement_speed base set 0.55
