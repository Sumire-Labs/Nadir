particle electric_spark ~ ~ ~ 0 0 0 1 10 force
tag @s add gha.solchain.return
scoreboard players operation $gha:temp.projectile gha.temp = $gha:const.10 gha.const
scoreboard players operation $gha:temp.projectile gha.temp -= @s gha.entity.tick
scoreboard players operation @s gha.entity.tick = $gha:temp.projectile gha.temp