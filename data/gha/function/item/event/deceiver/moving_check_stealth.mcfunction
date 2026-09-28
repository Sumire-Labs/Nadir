execute if entity @s[tag=gha.deceiver.moved] run return fail
tag @s add gha.deceiver.moved
execute store result score $gha:temp.weapon gha.temp run data get entity @s Pos[0] 100
execute unless score @s gha.x = $gha:temp.weapon gha.temp run return fail

execute store result score $gha:temp.weapon gha.temp run data get entity @s Pos[1] 100
execute unless score @s gha.y = $gha:temp.weapon gha.temp run return fail

execute store result score $gha:temp.weapon gha.temp run data get entity @s Pos[2] 100
execute unless score @s gha.z = $gha:temp.weapon gha.temp run return fail

tag @s remove gha.deceiver.moved
return 1