execute positioned ^ ^ ^1 run tp @s ~ ~0.8 ~ ~10 0
data modify entity @s data.u set from entity @p[distance=..5] UUID
tag @s remove gha.entity.init
tag @s add gha.pink_typhoon.1
tag @p[distance=..0.001] remove gha.pink_typhoon