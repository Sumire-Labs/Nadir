execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/chorubranch/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle dust{color:[0.9, 0.7, 0.9], scale:0.5} ~ ~ ~ 0 0 0 0 0 force

tp ^ ^ ^0.5