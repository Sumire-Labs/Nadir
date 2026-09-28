scoreboard players add @s gha.entity.tick.second 1
execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/frigid_snow/bolt/detect run return 1

execute if score @s gha.entity.tick.second matches ..2 run particle snowflake ~ ~ ~ 0 0 0 0 0 force
execute if score @s gha.entity.tick.second matches 3 run function gha:entity/projectile/frigid_snow/bolt/particle
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.5