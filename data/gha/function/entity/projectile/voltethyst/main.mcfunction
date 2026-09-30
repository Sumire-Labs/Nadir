scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/voltethyst"
data modify entity @s teleport_duration set value 1
execute unless function gha:entity/projectile/voltethyst/move at @s run return run function gha:entity/projectile/voltethyst/kill

execute if score @s gha.entity.tick matches 10 at @s run function gha:entity/projectile/voltethyst/kill