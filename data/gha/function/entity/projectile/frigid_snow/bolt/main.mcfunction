scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/frigid_snow/bolt/move at @s run return run function gha:entity/projectile/frigid_snow/bolt/kill

execute if score @s gha.entity.tick matches 15 at @s run function gha:entity/projectile/frigid_snow/bolt/kill