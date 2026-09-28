execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/storm_rod/detect with entity @s data

particle electric_spark ~ ~-0.75 ~ 0 0 0 0 0 force
particle dust{color:[1.0, 0.9, 0.6], scale:1} ~ ~-0.75 ~ 0.05 0.05 0.05 0 2 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.25

execute if score @s gha.entity.hit_count matches 4.. run return 1