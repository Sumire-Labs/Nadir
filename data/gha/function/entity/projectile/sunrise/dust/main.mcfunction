scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/sunrise/dust/move at @s run return run kill

execute if score @s gha.entity.tick matches 5 at @s run kill