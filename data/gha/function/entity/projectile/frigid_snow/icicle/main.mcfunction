scoreboard players add @s gha.entity.tick 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/icicle_rod"
data modify entity @s teleport_duration set value 1
execute if score @s gha.entity.tick matches ..3 store result entity @s transformation.scale[] float 0.25 run scoreboard players get @s gha.entity.tick

execute if score @s gha.entity.tick >= @s gha.entity.tick.second unless function gha:entity/projectile/frigid_snow/icicle/move at @s run return run function gha:entity/projectile/frigid_snow/icicle/kill

execute if score @s gha.entity.tick matches 15 at @s run function gha:entity/projectile/frigid_snow/icicle/kill