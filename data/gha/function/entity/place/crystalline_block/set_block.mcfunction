execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001,tag=gha.block,type=item_display] run return run function gha.generated:item/give/crystalline_block
execute unless block ~ ~ ~ #gha:no_collision run return run function gha.generated:item/give/crystalline_block
setblock ~ ~ ~ amethyst_block destroy
execute positioned ~ ~0.5 ~ run function gha:entity/place/crystalline_block/summon