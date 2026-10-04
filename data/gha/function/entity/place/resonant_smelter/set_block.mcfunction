execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001,tag=gha.block,type=item_display] run return run function gha.generated:item/give/resonant_smelter
execute unless block ~ ~ ~ #gha:no_collision run return run function gha.generated:item/give/resonant_smelter
execute positioned ~ ~0.5 ~ run function gha:entity/place/resonant_smelter/summon