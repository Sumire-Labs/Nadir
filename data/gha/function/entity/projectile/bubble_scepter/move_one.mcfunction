execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/bubble_scepter/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle bubble ~ ~ ~ 0 0 0 0 0 force

tp ^ ^ ^0.5