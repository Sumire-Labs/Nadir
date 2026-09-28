scoreboard players operation @s gha.entity.tick.third = @s gha.entity.tick
scoreboard players operation @s gha.entity.tick.third %= $gha:const.3 gha.const
execute if score @s gha.entity.tick.third matches 0 run data modify entity @s transformation.right_rotation[2] set value 1
execute if score @s gha.entity.tick.third matches 1 run data modify entity @s transformation.right_rotation[2] set value 0
execute if score @s gha.entity.tick.third matches 2 run data modify entity @s transformation.right_rotation[2] set value -1