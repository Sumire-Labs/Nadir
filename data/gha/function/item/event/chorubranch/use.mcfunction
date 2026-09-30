advancement revoke @s only gha.generated:use/chorubranch
scoreboard players reset @s gha.cooldown

playsound entity.blaze.shoot player @a ~ ~ ~ 1 0.75 0

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/chorubranch"}}
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:item/event/_generic/projectile