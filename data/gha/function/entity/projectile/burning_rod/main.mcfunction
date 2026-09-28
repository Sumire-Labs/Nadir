scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/burning_rod/core"
data modify entity @n[type=item_display, distance=..3, tag=gha.entity.sub] item.components."minecraft:item_model" set value "gha:particle/burning_rod/frame"
data modify entity @s teleport_duration set value 1
data modify entity @n[type=item_display, distance=..3, tag=gha.entity.sub] teleport_duration set value 1
scoreboard players set $gha:temp.projectile gha.temp 2
execute store result entity @s transformation.scale[] float 0.25 run scoreboard players operation $gha:temp.projectile gha.temp < @s gha.entity.tick
execute store result entity @n[type=item_display, distance=..3, tag=gha.entity.sub] transformation.scale[] float 0.4 run scoreboard players operation $gha:temp.projectile gha.temp < @s gha.entity.tick
execute store result entity @s transformation.left_rotation[0] float -0.1 run scoreboard players get @s gha.entity.tick
execute store result entity @s transformation.left_rotation[1] float -0.1 run scoreboard players get @s gha.entity.tick
execute store result entity @s transformation.left_rotation[2] float -0.1 run scoreboard players get @s gha.entity.tick
execute store result entity @n[type=item_display, distance=..3, tag=gha.entity.sub] transformation.left_rotation[0] float 0.1 run scoreboard players get @s gha.entity.tick
execute store result entity @n[type=item_display, distance=..3, tag=gha.entity.sub] transformation.left_rotation[1] float 0.1 run scoreboard players get @s gha.entity.tick
execute store result entity @n[type=item_display, distance=..3, tag=gha.entity.sub] transformation.left_rotation[2] float 0.1 run scoreboard players get @s gha.entity.tick

execute unless function gha:entity/projectile/burning_rod/move at @s run return run function gha:entity/projectile/burning_rod/kill

execute if score @s gha.entity.tick matches 15 at @s run function gha:entity/projectile/burning_rod/kill