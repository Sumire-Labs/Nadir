scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/x_shot_bow/move at @s run return run function gha:entity/projectile/x_shot_bow/kill with entity @s data

execute if score @s gha.entity.tick matches 30 at @s run function gha:entity/projectile/x_shot_bow/kill with entity @s data