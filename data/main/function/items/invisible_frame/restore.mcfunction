# ==============================================================================
# RESTORATION: DROPPED INVISIBLE ITEM FRAME
# Executed from marker entity when associated frame is broken
# ==============================================================================

# Restores components to dropped item frame
data modify entity @e[type=item,nbt={Item:{id:"minecraft:item_frame"}},distance=..3,sort=nearest,limit=1] Item.components set value {"minecraft:enchantment_glint_override":true,"minecraft:item_name":{text:"Invisible Item Frame",color:"aqua"},"minecraft:lore":[{text:"Invisible",color:"gray",italic:false}],"minecraft:entity_data":{"id":"minecraft:item_frame",Tags:["main.invisible_frame"],Invisible:1b},"minecraft:custom_data":{main_invisible_frame:true}}

# Restores components to dropped glow item frame
data modify entity @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},distance=..3,sort=nearest,limit=1] Item.components set value {"minecraft:enchantment_glint_override":true,"minecraft:item_name":{text:"Invisible Glow Item Frame",color:"aqua"},"minecraft:lore":[{text:"Invisible",color:"gray",italic:false}],"minecraft:entity_data":{"id":"minecraft:glow_item_frame",Tags:["main.invisible_frame"],Invisible:1b},"minecraft:custom_data":{main_invisible_frame:true}}

# Remove marker after restoring
kill @s
