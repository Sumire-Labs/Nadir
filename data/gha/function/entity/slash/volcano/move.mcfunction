$execute at @p[nbt={UUID:$(u)}, distance=..5] positioned ^ ^ ^0.7 run tp @s ~ ~1.2 ~ ~ ~
$execute at @s positioned ^ ^ ^-1.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#gha:living, dy=3, nbt=!{UUID:$(u)}] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1.5 run function gha:entity/slash/volcano/check with entity @s
$execute at @s positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#gha:living, dy=3, nbt=!{UUID:$(u)}] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-0.5 run function gha:entity/slash/volcano/check with entity @s
$execute at @s positioned ^ ^ ^1.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#gha:living, dy=3, nbt=!{UUID:$(u)}] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1.5 run function gha:entity/slash/volcano/check with entity @s
$execute at @s positioned ^ ^ ^2.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#gha:living, dy=3, nbt=!{UUID:$(u)}] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-2.5 run function gha:entity/slash/volcano/check with entity @s
