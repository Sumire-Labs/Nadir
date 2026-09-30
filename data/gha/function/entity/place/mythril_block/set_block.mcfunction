execute positioned ~ ~0.5 ~ if entity @n[distance=..0.001, type=item_display, tag=gha.block] run return run function gha.generated:item/give/mythril_block
execute unless block ~ ~ ~ #gha:no_collision run return run function gha.generated:item/give/mythril_block
setblock ~ ~ ~ obsidian destroy
execute positioned ~ ~0.5 ~ run function gha:entity/place/mythril_block/summon