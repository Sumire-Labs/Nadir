execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/flame_chakram/detect with entity @s data

execute unless score @s gha.entity.tick matches 15.. run function gha:entity/projectile/flame_chakram/wall_check

particle crit ~ ~ ~ 0 0 0 0 0 force
particle small_flame ^0.75 ^ ^ 0 0 0 0 0 force
particle small_flame ^-0.75 ^ ^ 0 0 0 0 0 force

execute at @s run tp ^ ^ ^0.5
execute at @s run function gha:entity/projectile/flame_chakram/return with entity @s data