execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/lasore_gun/iron/detect with entity @s data

particle dust{color:[0.8, 0.8, 0.8], scale:1} ~ ~ ~ 0 0 0 0 0 force
particle electric_spark ~ ~ ~ 0 0 0 0 0 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5

execute if score @s gha.entity.hit_count matches 7.. run return 1