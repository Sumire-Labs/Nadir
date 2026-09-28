$data modify entity @s data.u set value $(u)
execute store result score @s gha.entity.tick.second run random value 2..4
$tp @s ~$(x) ~5 ~$(y) ~ ~
tag @s remove gha.entity.init