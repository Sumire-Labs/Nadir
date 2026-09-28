scoreboard players add @s gha.entity.tick.second 1
execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/lasore_gun/quartz/detect run return 1

particle dust{color:[1.0, 0.9, 0.9], scale:1} ~ ~ ~ 0 0 0 0 0 force
particle electric_spark ~ ~ ~ 0 0 0 0 0 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5