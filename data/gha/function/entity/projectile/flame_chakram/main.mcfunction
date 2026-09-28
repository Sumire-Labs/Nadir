execute store result entity @s data.r float 0.033 run scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:flame_chakram"
data modify entity @s teleport_duration set value 1
scoreboard players operation @s gha.entity.tick.third = @s gha.entity.tick
scoreboard players operation @s gha.entity.tick.third %= $gha:const.3 gha.const
execute if score @s gha.entity.tick.third matches 0 run data modify entity @s transformation.right_rotation[2] set value 1
execute if score @s gha.entity.tick.third matches 1 run data modify entity @s transformation.right_rotation[2] set value 0
execute if score @s gha.entity.tick.third matches 2 run data modify entity @s transformation.right_rotation[2] set value -1

execute if score @s gha.entity.tick matches 15 run data remove entity @s data.h

function gha:entity/projectile/flame_chakram/move_one
execute at @s run function gha:entity/projectile/flame_chakram/move_one
execute at @s run function gha:entity/projectile/flame_chakram/move_one
execute at @s run function gha:entity/projectile/flame_chakram/move_one
execute at @s run function gha:entity/projectile/flame_chakram/move_one
execute at @s run function gha:entity/projectile/flame_chakram/move_one
execute at @s run function gha:entity/projectile/flame_chakram/move_one

execute if score @s gha.entity.tick matches 40 at @s run kill