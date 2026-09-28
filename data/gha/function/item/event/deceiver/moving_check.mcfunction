execute if score @s gha.attack matches 1.. run return fail

execute store result score $gha:temp.weapon gha.temp run data get entity @s Pos[0] 100
execute unless score @s gha.x = $gha:temp.weapon gha.temp run return fail

execute store result score $gha:temp.weapon gha.temp run data get entity @s Pos[1] 100
execute unless score @s gha.y = $gha:temp.weapon gha.temp run return fail

execute store result score $gha:temp.weapon gha.temp run data get entity @s Pos[2] 100
execute unless score @s gha.z = $gha:temp.weapon gha.temp run return fail

return run scoreboard players add @s gha.weapon.deceiver 5