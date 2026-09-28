scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/eggregator/left/move at @s run return run function gha:entity/projectile/eggregator/kill with entity @s data

execute if score @s gha.entity.tick matches 18 at @s run function gha:entity/projectile/eggregator/kill with entity @s data