scoreboard players add @s gha.entity.tick 1
scoreboard players add @s gha.entity.tick.second 1
scoreboard players add @s gha.entity.tick.third 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/storm_rod"
data modify entity @s teleport_duration set value 1
scoreboard players set $gha:temp.projectile gha.temp 10
execute if score @s gha.entity.tick matches ..4 store result entity @s transformation.scale[] float 0.25 run scoreboard players get @s gha.entity.tick
execute if score @s gha.entity.tick.second matches 1 run data modify entity @s transformation.left_rotation[1] set value 1
execute if score @s gha.entity.tick.second matches 2 run data modify entity @s transformation.left_rotation[1] set value 0
execute if score @s gha.entity.tick.second matches 2 run scoreboard players reset @s gha.entity.tick.second
execute if score @s gha.entity.tick.third matches 8 run playsound entity.player.attack.sweep player @a ~ ~ ~ 0.1 0.5 0
execute if score @s gha.entity.tick.third matches 8 run scoreboard players reset @s gha.entity.tick.third


execute unless function gha:entity/projectile/storm_rod/move at @s run return run function gha:entity/projectile/storm_rod/kill

execute if score @s gha.entity.tick matches 30 at @s run function gha:entity/projectile/storm_rod/kill