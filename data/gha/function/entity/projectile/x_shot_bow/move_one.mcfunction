execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/x_shot_bow/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle dust{color:[0.7, 0.2, 1.0], scale:0.5} ~ ~ ~ 0 0 0 0 0 force
particle electric_spark ^ ^ ^0.5 0 0 0 0 0 force
execute store result storage gha:temp temp.projectile.g float 0.0015 run scoreboard players add @s gha.entity.tick.second 1

tp ^ ^ ^0.5
execute at @s run function gha:entity/projectile/x_shot_bow/gravity with storage gha:temp temp.projectile