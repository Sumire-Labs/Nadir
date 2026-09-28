scoreboard players add @s gha.entity.tick 1
execute if score @s gha.entity.tick matches 12.. run return run kill

data modify entity @s teleport_duration set value 1
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] int 0.5 run scoreboard players get @s gha.entity.tick
scoreboard players set $gha:temp.projectile gha.temp -4
execute store result entity @s transformation.right_rotation[2] float 0.02 run scoreboard players operation $gha:temp.projectile gha.temp += @s gha.entity.tick
execute positioned ^ ^ ^2 run particle lava ~ ~-1.2 ~ 0 0 0 0 0 force
function gha:entity/slash/volcano/move with entity @s data