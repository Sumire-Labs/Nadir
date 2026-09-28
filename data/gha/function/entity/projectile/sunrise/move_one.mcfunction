execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/sunrise/detect with entity @s data

particle end_rod ~ ~ ~ 0 0 0 0 0 force
particle dust_color_transition{from_color:[1.0, 0.8, 0.5], to_color:[0.5, 0.0, 0.0], scale:1} ~ ~ ~ 0 0 0 0 1 force
particle lava ~ ~ ~ 0 0 0 0 0 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5

execute if score @s gha.entity.hit_count matches 4.. run return run kill