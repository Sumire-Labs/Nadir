data remove storage gha:temp temp.craft.c
$execute unless function gha.generated:recipe/$(r)/check run return fail

function gha:entity/block/workbench/recipe/shapeless/get_reduced_count

execute positioned ~ ~0.7 ~ unless entity @n[distance=..0.001,tag=gha.craft_interaction,type=interaction] run summon interaction ~ ~ ~ {Tags: [gha.craft_interaction], width:0.5, height:0.5, response:true}
data modify block ~ ~ ~ CustomName set value [{text:"1 ", font:"gha:gui", color:"green"},{translate:"item.gha.workbench",font:"default", color:"dark_gray"},{text:" 1", font:"gha:gui", color:"green"}]
data modify entity @s data.r set from storage gha:temp temp.craft.r
tag @s add gha.can_craft
tag @s add gha.shapeless_recipe