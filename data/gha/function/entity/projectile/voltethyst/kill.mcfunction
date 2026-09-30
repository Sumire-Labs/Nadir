playsound block.glass.break player @a ~ ~ ~ 1 1.5 0
particle electric_spark ~ ~ ~ 0 0 0 1 10 force

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/voltethyst/spark"}}
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:entity/projectile/voltethyst/projectile

kill