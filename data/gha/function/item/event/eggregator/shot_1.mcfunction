playsound entity.arrow.shoot player @a ~ ~ ~ 1 1 0
summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/eggregator"}}
tag @s remove gha.eggregator.1
tag @s add gha.eggregator.2
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:item/event/_generic/projectile