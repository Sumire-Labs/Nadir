execute unless block ~ ~ ~ dropper[facing=up] run return run function gha:entity/block/workbench/break
function gha:entity/block/workbench/cache_check with entity @s data
execute if entity @s[tag=gha.can_craft] run function gha:entity/block/workbench/craft/wait