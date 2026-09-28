data modify entity @s data.u set from entity @n[type=marker, distance=..0.001, tag=gha.chorubranch] data.u
$tp @s ~ ~ ~ ~$(x) ~$(y)
tag @s remove gha.entity.init
scoreboard players operation @s gha.number = @n[type=marker, distance=..0.001, tag=gha.chorubranch] gha.number
scoreboard players add @s gha.number 1