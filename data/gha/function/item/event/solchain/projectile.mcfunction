$execute positioned ^ ^ ^0.2 run tp @s ~ ~1.2 ~ ~$(x) ~$(y)
data modify entity @s data.u set from entity @p[distance=..5] UUID
tag @s remove gha.entity.init