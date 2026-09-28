scoreboard players add @s gha.entity.tick.second 1
execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/enchanted_wand/blue/detect run return run function gha:entity/projectile/enchanted_wand/blue/kill

execute if score @s gha.entity.tick.second matches ..3 run particle dust{color:[0.6, 0.5, 1.0], scale:1} ~ ~ ~ 0 0 0 0 0 force
execute if score @s gha.entity.tick.second matches 4 run function gha:entity/projectile/enchanted_wand/blue/particle
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.35