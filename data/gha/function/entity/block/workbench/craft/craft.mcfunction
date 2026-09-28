function gha:entity/block/workbench/craft/craft_process with entity @s data
function gha:entity/block/workbench/craft/remove_interaction with entity @n[distance=..0.001,tag=gha.craft_interaction,type=interaction] interaction
execute positioned ~ ~-0.7 ~ run function gha:entity/block/workbench/craft/reduce_item

particle end_rod ~ ~ ~ 0 0 0 0.05 10
playsound block.smithing_table.use block @a ~ ~ ~ 1 1.5 0