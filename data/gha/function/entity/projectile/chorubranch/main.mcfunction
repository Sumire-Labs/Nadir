scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/chorubranch/move at @s run return run function gha:entity/projectile/chorubranch/kill

execute if score @s gha.entity.tick matches 5 at @s run function gha:entity/projectile/chorubranch/summon