execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001, type=item_display, tag=gha.block] run return run function gha:item/give/workbench
execute unless block ~ ~ ~ #gha:no_collision run return run function gha:item/give/workbench
setblock ~ ~ ~ dropper[facing=up]{CustomName:[{text:"0 ", font:"gha:gui", color:"gray"},{translate:"item.gha.workbench",font:"default", color:"dark_gray"},{text:" 0", font:"gha:gui", color:"gray"}]} destroy
execute positioned ~ ~0.5 ~ run function gha:entity/place/workbench/summon