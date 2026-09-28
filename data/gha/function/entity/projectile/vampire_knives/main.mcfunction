scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/vampire_knives"
data modify entity @s teleport_duration set value 1
execute if score @s gha.entity.tick matches 5.. run function gha:entity/projectile/vampire_knives/add_gravity
execute unless function gha:entity/projectile/vampire_knives/move at @s run return run function gha:entity/projectile/vampire_knives/kill

execute if score @s gha.entity.tick matches 15 at @s run function gha:entity/projectile/vampire_knives/kill