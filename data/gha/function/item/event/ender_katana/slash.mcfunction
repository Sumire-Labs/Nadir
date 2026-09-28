execute rotated ~ 0 positioned ^ ^ ^1.5 run tp @s ~ ~ ~ ~ 0
data modify entity @s data.u set from entity @p[distance=..5] UUID
tag @s remove gha.entity.init
execute at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 5 force