scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:brick_mattock"
data modify entity @s teleport_duration set value 1
scoreboard players operation @s gha.entity.tick.third = @s gha.entity.tick
scoreboard players operation @s gha.entity.tick.third %= $gha:const.9 gha.const
execute if score @s gha.entity.tick.third matches ..2 run data modify entity @s transformation.right_rotation[2] set value 1
execute if score @s gha.entity.tick.third matches 3..5 run data modify entity @s transformation.right_rotation[2] set value 0
execute if score @s gha.entity.tick.third matches 6.. run data modify entity @s transformation.right_rotation[2] set value -1
execute unless function gha:entity/projectile/brick_mattock/move at @s run return run function gha:entity/projectile/brick_mattock/kill with entity @s data

execute if score @s gha.entity.tick matches 50 at @s run function gha:entity/projectile/brick_mattock/kill with entity @s data