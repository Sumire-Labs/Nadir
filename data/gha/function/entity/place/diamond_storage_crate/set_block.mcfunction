execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001, type=item_display, tag=gha.block] run return run function gha:item/give/diamond_storage_crate
execute unless block ~ ~ ~ #gha:no_collision run return run function gha:item/give/diamond_storage_crate
setblock ~ ~ ~ barrel[facing=up]{CustomName:{translate:"item.gha.diamond_storage_crate",font:"default", color:"dark_gray"}} destroy
execute positioned ~ ~0.5 ~ run function gha:entity/place/diamond_storage_crate/summon