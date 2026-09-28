execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/pink_typhoon/detect run return 1

particle electric_spark ~ ~-0.75 ~ 0 0 0 0 0 force
particle cherry_leaves ~ ~0.25 ~ 0.25 0.15 0.25 0 1 force
particle dust{color:[1.0, 0.7, 0.8], scale:1} ~ ~-0.75 ~ 0.05 0.05 0.05 0 0 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

execute if entity @s[tag=gha.pink_typhoon.1] run tp @s ^ ^ ^0.5 ~-0.25 0
execute if entity @s[tag=gha.pink_typhoon.2] run tp @s ^ ^ ^0.5 ~0.25 0