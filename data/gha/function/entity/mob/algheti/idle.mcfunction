# warn-off-file execute-group
function gha:entity/mob/algheti/move
execute at @s run function gha:entity/mob/algheti/move
execute at @s run function gha:entity/mob/algheti/move
execute at @s run function gha:entity/mob/algheti/move
scoreboard players operation $gha:temp.mob gha.entity.tick.second = @s gha.entity.tick.second
scoreboard players operation $gha:temp.mob gha.entity.tick.second %= $gha:const.100 gha.const
execute if score $gha:temp.mob gha.entity.tick.second matches 1 run function gha:entity/mob/algheti/attack/pick_attack

execute if score @s gha.number matches 0 run return run function gha:entity/mob/algheti/attack/up/up