scoreboard players add @s gha.entity.tick 1
execute if score @s gha.entity.tick matches 6.. run return run kill

data modify entity @s teleport_duration set value 1
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get @s gha.entity.tick
scoreboard players set $gha:temp.projectile gha.temp -4
execute store result entity @s transformation.right_rotation[2] float 0.1 run scoreboard players operation $gha:temp.projectile gha.temp += @s gha.entity.tick
function gha:entity/slash/terra_blade/move with entity @s data