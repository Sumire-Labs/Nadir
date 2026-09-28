execute if entity @s[gamemode=!creative] run clear @s sugar 1

playsound entity.arrow.shoot player @a ~ ~ ~ 0.5 1 0
playsound block.sand.step player @a ~ ~ ~ 0.75 2 0

summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/sarkara"}}
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:item/event/_generic/projectile