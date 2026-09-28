scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/bubble_scepter/move at @s run return run function gha:entity/projectile/bubble_scepter/kill with entity @s data

execute if score @s gha.entity.tick matches 18 at @s run function gha:entity/projectile/bubble_scepter/kill with entity @s data