particle end_rod ~ ~ ~ 0 0 0 0.1 1 force

execute if score @s gha.number matches 2 if predicate gha:chance/50 run return run kill
execute if score @s gha.number matches 3 run return run kill
tag @s add gha.chorubranch

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/chorubranch"}}
execute store result storage gha:temp temp.projectile.x float 0.01 run random value -500..500
execute store result storage gha:temp temp.projectile.y float 0.01 run random value -300..300
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/chorubranch/projectile with storage gha:temp temp.projectile

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/chorubranch"}}
execute store result storage gha:temp temp.projectile.x float 0.01 run random value -500..500
execute store result storage gha:temp temp.projectile.y float 0.01 run random value -300..300
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/chorubranch/projectile with storage gha:temp temp.projectile

execute if predicate gha:chance/50 run return run kill

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/chorubranch"}}
execute store result storage gha:temp temp.projectile.x float 0.01 run random value -500..500
execute store result storage gha:temp temp.projectile.y float 0.01 run random value -300..300
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/chorubranch/projectile with storage gha:temp temp.projectile

kill