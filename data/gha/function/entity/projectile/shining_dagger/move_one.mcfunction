execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/shining_dagger/detect with entity @s data

particle end_rod ~ ~ ~ 0 0 0 0 0 force
particle dust{color:[0.6, 0.7, 1.0], scale:1} ~ ~ ~ 0 0 0 0 1 force
particle block{block_state:"quartz_block"} ~ ~-0.2 ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ #gha:no_collision run return 1

tp ^ ^ ^0.35

execute if score @s gha.entity.hit_count matches 4.. run return run kill