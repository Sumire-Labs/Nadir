execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/voltethyst/spark/detect with entity @s data

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle electric_spark ~ ~ ~ 0 0 0 0 0 force

execute if score @s gha.entity.hit_count matches 5.. run return 1

tp ^ ^ ^0.5