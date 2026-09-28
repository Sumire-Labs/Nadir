scoreboard players add @s gha.entity.tick 1

execute unless entity @n[type=#gha:hostile, distance=..15] run return run kill
execute if score @s gha.entity.tick matches 1 if entity @n[type=#gha:hostile, distance=..15] run function gha:entity/projectile/voltethyst/spark/chain_detect with entity @s data
execute unless function gha:entity/projectile/voltethyst/spark/move at @s run return run kill

execute if score @s gha.entity.tick matches 3 at @s run kill