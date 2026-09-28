execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/bustersushi/living/detect run return 1

particle dust{color:[0.8, 0.0, 0.8], scale:1} ~ ~ ~ 0 0 0 0 0 force
particle dust{color:[0.9, 0.0, 0.2], scale:1} ~ ~ ~ 0.3 0.3 0.3 0 1 force
particle bubble ~ ~ ~ 0.2 0.2 0.2 0 1 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5