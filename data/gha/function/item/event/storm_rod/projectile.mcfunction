execute rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~0.8 ~ ~ 0
data modify entity @s data.u set from entity @p[distance=..5] UUID
tag @s remove gha.entity.init