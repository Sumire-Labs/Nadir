execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/frigid_snow/icicle/detect run return 1

particle snowflake ~ ~ ~ 0 0 0 0 0 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ~ ~-0.5 ~

execute if score @s gha.entity.hit_count matches 20.. run return 1