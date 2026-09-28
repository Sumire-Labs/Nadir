scoreboard players add @s gha.entity.tick.second 1
execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/lasore_gun/coal/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle dust{color:[0.1, 0.1, 0.1], scale:1} ~ ~ ~ 0 0 0 0 0 force
particle electric_spark ~ ~ ~ 0 0 0 0 0 force
execute store result storage gha:temp temp.projectile.g float 0.004 run scoreboard players add @s gha.entity.tick.second 1

tp ^ ^ ^0.5
execute at @s run function gha:entity/projectile/brick_mattock/gravity with storage gha:temp temp.projectile