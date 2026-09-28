scoreboard players add @s gha.entity.tick 1
execute if score @s gha.entity.tick matches 1 run function gha:entity/particle/terra_blade/spawn
execute if score @s gha.entity.tick matches 4.. run return run kill

execute if score @s gha.entity.tick matches ..2 run return run function gha:entity/particle/terra_blade/appear

scoreboard players set $gha:temp.projectile gha.temp 4
execute store result entity @s transformation.scale[0] float 1.25 run scoreboard players operation $gha:temp.projectile gha.temp -= @s gha.entity.tick
execute store result entity @s transformation.scale[1] float 1.25 run scoreboard players get $gha:temp.projectile gha.temp