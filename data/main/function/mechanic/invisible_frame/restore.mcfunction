# ==============================================================================
# RESTAURAÇÃO: MOLDURA INVISÍVEL DROPADA
# Executado a partir do marcador quando a moldura associada for quebrada
# ==============================================================================

# Restaura os componentes na moldura comum dropada próxima
data modify entity @e[type=item,nbt={Item:{id:"minecraft:item_frame"}},distance=..3,sort=nearest,limit=1] Item.components set value {"minecraft:enchantment_glint_override":true,"minecraft:item_name":{text:"Moldura Invisível",color:"aqua"},"minecraft:lore":[{text:"Invisível",color:"gray",italic:false}],"minecraft:entity_data":{"id":"minecraft:item_frame",Tags:["main.invisible_frame"],Invisible:1b},"minecraft:custom_data":{main_invisible_frame:true}}

# Restaura os componentes na moldura brilhante dropada próxima
data modify entity @e[type=item,nbt={Item:{id:"minecraft:glow_item_frame"}},distance=..3,sort=nearest,limit=1] Item.components set value {"minecraft:enchantment_glint_override":true,"minecraft:item_name":{text:"Moldura Brilhante Invisível",color:"aqua"},"minecraft:lore":[{text:"Invisível",color:"gray",italic:false}],"minecraft:entity_data":{"id":"minecraft:glow_item_frame",Tags:["main.invisible_frame"],Invisible:1b},"minecraft:custom_data":{main_invisible_frame:true}}

# Remove o marcador após restaurar
kill @s
