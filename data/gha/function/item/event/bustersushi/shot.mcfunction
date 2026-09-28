scoreboard players remove @s gha.weapon.bustersushi 1

function gha:item/event/bustersushi/type
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:item/event/_generic/projectile

playsound entity.arrow.shoot player @a ~ ~ ~ 0.35 1.5 0
playsound entity.firework_rocket.launch player @a ~ ~ ~ 0.35 2 0
playsound minecraft:block.note_block.bit player @a ~ ~ ~ 0.5 2 0