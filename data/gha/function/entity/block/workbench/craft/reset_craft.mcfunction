tag @s remove gha.can_craft
execute positioned ~ ~0.7 ~ run kill @n[distance=..0.001,tag=gha.craft_display,type=item_display]
data modify block ~ ~ ~ CustomName set value [{text:"0 ", font:"gha:gui", color:"gray"},{translate:"item.gha.workbench",font:"default", color:"dark_gray"},{text:" 0", font:"gha:gui", color:"gray"}]