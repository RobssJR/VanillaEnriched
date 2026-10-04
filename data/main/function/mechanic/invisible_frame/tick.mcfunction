# ==============================================================================
# TICK LOOP: MOLDURAS INVISÍVEIS (Minecraft 26.3)
# ==============================================================================

# 1. Se a moldura estiver vazia e invisível, torna-a visível para o jogador ver onde está
execute as @e[tag=main.invisible_frame,nbt={Invisible:1b},nbt=!{Item:{}}] run data modify entity @s Invisible set value false

# 2. Se a moldura tiver um item inserido e estiver visível, torna-a invisível
execute as @e[tag=main.invisible_frame,nbt={Invisible:0b},nbt={Item:{}}] run data modify entity @s Invisible set value true

# 3. Garante que qualquer moldura invisível tenha um marcador de restauração
execute as @e[tag=main.invisible_frame] at @s unless entity @e[type=marker,tag=main.frame_marker,distance=..0.1] run summon marker ~ ~ ~ {Tags:["main.frame_marker"]}

# 4. Se a moldura foi quebrada/removida, o marcador restaura o drop encantado e se elimina
execute as @e[type=marker,tag=main.frame_marker] at @s unless entity @e[tag=main.invisible_frame,distance=..0.1] run function main:mechanic/invisible_frame/restore
