scoreboard players add @s gha.entity.tick.second 1
execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/o_potato_launcher/detect run return 1

particle dust{color:[1.0, 0.8, 0.2], scale:1} ~ ~ ~ 0.05 0.05 0.05 0 2 force
execute if score @s gha.entity.tick.second matches ..2 run particle smoke ~ ~ ~ 0.05 0.05 0.05 0 2 force
execute if score @s gha.entity.tick.second matches 3 run function gha:entity/projectile/o_potato_launcher/particle
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5