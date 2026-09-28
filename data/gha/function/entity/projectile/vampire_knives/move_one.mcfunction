execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/vampire_knives/detect run return run function gha:entity/projectile/vampire_knives/hit

execute unless block ~ ~ ~ #gha:no_collision run return 1

particle dust{color:[1.0, 0.2, 0.2], scale:0.5} ^ ^ ^ 0 0 0 0 0 force
execute if score @s gha.entity.tick matches 5.. store result storage gha:temp temp.projectile.g float 0.01 run scoreboard players add @s gha.entity.tick.second 1

tp ^ ^ ^0.5
execute if score @s gha.entity.tick matches 5.. at @s run function gha:entity/projectile/brick_mattock/gravity with storage gha:temp temp.projectile