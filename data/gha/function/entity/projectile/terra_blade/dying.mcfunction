scoreboard players add @s gha.entity.tick 2

scoreboard players set @s gha.y 7
execute store result entity @s transformation.scale[1] float 1 run scoreboard players operation @s gha.y -= @s gha.entity.tick

execute if score @s gha.entity.tick matches 8.. run kill