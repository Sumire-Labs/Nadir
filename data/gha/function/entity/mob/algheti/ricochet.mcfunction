tp @s ~ ~ ~ ~ ~
tag @s add gha.reflected

execute store result storage gha:temp temp.mob.x int 1 run random value -30..30
execute store result storage gha:temp temp.mob.y int 1 run random value -30..30
execute at @s run function gha:entity/mob/algheti/starting/rotate with storage gha:temp temp.mob
