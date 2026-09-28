scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/o_potato_launcher"
data modify entity @s teleport_duration set value 1
execute store result entity @s transformation.left_rotation[0] float -0.04 run scoreboard players get @s gha.entity.tick
execute store result entity @s transformation.left_rotation[1] float -0.04 run scoreboard players get @s gha.entity.tick
execute store result entity @s transformation.left_rotation[2] float -0.04 run scoreboard players get @s gha.entity.tick
execute unless function gha:entity/projectile/o_potato_launcher/move at @s run return run function gha:entity/projectile/o_potato_launcher/kill with entity @s data

execute if score @s gha.entity.tick matches 25 at @s run function gha:entity/projectile/o_potato_launcher/kill with entity @s data