scoreboard players add @s gha.entity.tick 1
execute if entity @s[tag=gha.entity.kill] run return run function gha:entity/projectile/terra_blade/dying

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/terra_blade_beam"
data modify entity @s teleport_duration set value 1
scoreboard players set $gha:temp.projectile gha.temp 7
execute store result entity @s transformation.scale[0] float 1 run scoreboard players operation $gha:temp.projectile gha.temp < @s gha.entity.tick
execute store result entity @s data.t float 0.5 run scoreboard players get $gha:temp.projectile gha.temp
execute store result entity @s data.y float 0.25 run scoreboard players get $gha:temp.projectile gha.temp
execute store result entity @s data.z float 0.35 run scoreboard players get $gha:temp.projectile gha.temp

execute unless function gha:entity/projectile/terra_blade/move run return run function gha:entity/projectile/terra_blade/kill

execute if score @s gha.entity.tick matches 20 run function gha:entity/projectile/terra_blade/kill