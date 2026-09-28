execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/nether_brick_mattock/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle crit ~ ~ ~ 0 0 0 0 0 force
execute store result storage gha:temp temp.projectile.g float 0.005 run scoreboard players add @s gha.entity.tick.second 1

tp ^ ^ ^0.5
execute at @s run function gha:entity/projectile/brick_mattock/gravity with storage gha:temp temp.projectile