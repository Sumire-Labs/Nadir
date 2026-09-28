execute if score @s gha.entity.tick matches 1 run return run function gha:entity/mob/algheti/starting/first
execute if score @s gha.entity.tick matches 10.. run function gha:entity/mob/algheti/starting/name
execute if score @s gha.entity.tick matches ..60 run return fail

posteffect remove @a gha:black
title @a subtitle ""
title @a title ""
playsound minecraft:block.bubble_column.upwards_inside hostile @a ~ ~ ~ 1 0.5 1

data modify entity @s Invulnerable set value 0b
execute store result storage gha:temp temp.mob.x int 1 run random value -180..180
execute store result storage gha:temp temp.mob.y int 1 run random value -45..45
function gha:entity/mob/algheti/starting/rotate with storage gha:temp temp.mob

execute store result score @s gha.health.max if entity @a
execute store result bossbar gha:algheti max run scoreboard players operation @s gha.health.max *= $gha:const.max_health.algheti gha.const
scoreboard players operation @s gha.health = @s gha.health.max

bossbar set gha:algheti players @a
bossbar set gha:algheti visible true