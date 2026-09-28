execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/eggregator/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle dust{color:[1.0, 1.0, 0.95], scale:1} ~ ~ ~ 0 0 0 0 0 force

tp ^ ^ ^0.5