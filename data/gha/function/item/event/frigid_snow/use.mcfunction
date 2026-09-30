advancement revoke @s only gha.generated:use/frigid_snow
scoreboard players reset @s gha.cooldown

playsound entity.arrow.shoot player @a ~ ~ ~ 0.35 1.5 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 1.25 0

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/frigid_snow/bolt"}}
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:item/event/_generic/projectile