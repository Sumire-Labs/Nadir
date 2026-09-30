execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001, type=item_display, tag=gha.block] run return run function gha.generated:item/give/emerald_storage_cabinet
execute unless block ~ ~ ~ #gha:no_collision run return run function gha.generated:item/give/emerald_storage_cabinet
setblock ~ ~ ~ dropper[facing=up]{CustomName:{translate:"item.gha.emerald_storage_cabinet",font:"default", color:"dark_gray"}} destroy
execute positioned ~ ~0.5 ~ run function gha:entity/place/emerald_storage_cabinet/summon