execute positioned ^0.5 ^ ^1 run tp @s ~ ~1.6 ~ ~2 ~
data modify entity @s data.u set from entity @p[distance=..5] UUID
tag @s remove gha.entity.init