execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/voltethyst/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
execute if score @s gha.entity.tick matches 2.. run particle dust_color_transition{from_color:[0.4, 1.0, 0.9], to_color:[0.7, 0.3, 1.0], scale:0.5} ^-0.7 ^ ^-0.25 0 0 0 0 0 force
execute if score @s gha.entity.tick matches 2.. run particle dust_color_transition{from_color:[0.4, 1.0, 0.9], to_color:[0.7, 0.3, 1.0], scale:0.5} ^0.7 ^ ^-0.25 0 0 0 0 0 force

particle electric_spark ^-0.85 ^ ^-0.25 0 0 0 0 0 force
particle electric_spark ^0.85 ^ ^-0.25 0 0 0 0 0 force

tp ^ ^ ^0.5