advancement revoke @s only gha.generated:use/bubble_scepter
scoreboard players reset @s gha.cooldown

playsound ui.hud.bubble_pop player @a ~ ~ ~ 1 1.5 0

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/bubble_scepter"}}
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:item/event/_generic/spread/8

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/bubble_scepter"}}
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:item/event/_generic/spread/8