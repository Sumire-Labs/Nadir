scoreboard players add @s gha.entity.tick 1

execute unless function gha:entity/projectile/lasore_gun/redstone/move at @s run return run function gha:entity/projectile/lasore_gun/redstone/kill

execute if score @s gha.entity.tick matches 5 at @s run function gha:entity/projectile/lasore_gun/redstone/kill