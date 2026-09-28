scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/enchanted_wand/pink"
data modify entity @s teleport_duration set value 1
scoreboard players set $gha:temp.projectile gha.temp 2
execute store result entity @s transformation.scale[] float 0.75 run scoreboard players operation $gha:temp.projectile gha.temp < @s gha.entity.tick

execute unless function gha:entity/projectile/enchanted_wand/pink/move at @s run return run function gha:entity/projectile/enchanted_wand/blue/kill

execute if score @s gha.entity.tick matches 20 at @s run function gha:entity/projectile/enchanted_wand/blue/kill