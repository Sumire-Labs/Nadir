tag @s remove gha.block.update
execute store result storage gha:temp temp.block.a int 1 run scoreboard players get @s gha.number
function gha:entity/block/copper_storage_cabinet/display_count with storage gha:temp temp.block