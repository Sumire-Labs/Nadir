advancement revoke @s only gha:use/x_shot_bow
execute unless score @s gha.cooldown matches 20.. run return fail
scoreboard players reset @s gha.cooldown

playsound entity.arrow.shoot player @a ~ ~ ~ 0.6 1.2 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.25 2 0

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/x_shot_bow"}}
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:item/event/lasore_gun/projectile_3

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/x_shot_bow"}}
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:item/event/lasore_gun/projectile_4