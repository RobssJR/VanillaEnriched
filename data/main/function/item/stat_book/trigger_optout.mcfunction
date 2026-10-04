scoreboard players set @s enriched.optedin 0
scoreboard players set @s enriched.optin 0

tellraw @s [{translate:"enriched.opt_out",color:"gray",italic:true,fallback:"Você optou por não participar das estatísticas. Suas pontuações serão removidas na próxima atualização."}]

# Remove player from existing storages
data modify storage enriched:tmp remove.uuid set from entity @s UUID
data modify storage enriched:tmp remove.tracked set from storage enriched:tracking tracked
execute store result score #amt vplus_math run data get storage enriched:tmp remove.tracked
execute if score #amt vplus_math matches 1.. run function main:item/stat_book/store_remove with storage enriched:tmp remove
