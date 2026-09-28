scoreboard players add @s gha.entity.tick 1
execute if entity @s[tag=gha.entity.kill] run return run function gha:entity/projectile/shining_dagger/dying

data modify entity @s item.components."minecraft:item_model" set value "gha:shining_dagger"
data modify entity @s teleport_duration set value 1

execute unless function gha:entity/projectile/shining_dagger/move at @s run return run function gha:entity/projectile/shining_dagger/kill

execute if score @s gha.entity.tick matches 5 at @s run kill