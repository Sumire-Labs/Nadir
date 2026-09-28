scoreboard players operation @s gha.size *= $gha:const.27 gha.const
execute if score @s gha.number >= @s gha.size run function gha:entity/block/copper_storage_cabinet/loot/27

scoreboard players operation @s gha.size /= $gha:const.27 gha.const
execute if score @s gha.number >= @s gha.size run function gha:entity/block/copper_storage_cabinet/loot/stack

execute if score @s gha.number >= @s gha.size run function gha:entity/block/copper_storage_cabinet/loot/loot