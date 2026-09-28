scoreboard players set @s gha.cooldown_max 6
function gha:item/cooldown/bar

execute if entity @s[tag=gha.eggregator.2] run return run function gha:item/event/eggregator/shot_2
execute if entity @s[tag=gha.eggregator.1] run return run function gha:item/event/eggregator/shot_1