execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001,tag=gha.block,type=item_display] run return run function gha:item/give/recipe_library
execute unless block ~ ~ ~ #gha:no_collision run return run function gha:item/give/recipe_library
setblock ~ ~ ~ barrel[facing=up]{CustomName:{translate:"item.gha.recipe_library",font:"default", color:"dark_gray"}} destroy
execute positioned ~ ~0.5 ~ run function gha:entity/place/recipe_library/summon