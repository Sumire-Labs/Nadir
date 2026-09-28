execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/terra_blade/detect with entity @s data

particle electric_spark ~ ~ ~ 0 0 0 0 0 force
execute if score @s gha.entity.tick matches 2.. run function gha:entity/projectile/terra_blade/particle with entity @s data

execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5

execute if score @s gha.entity.hit_count matches 20.. run return 1