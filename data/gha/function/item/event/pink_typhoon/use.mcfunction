advancement revoke @s only gha.generated:use/pink_typhoon
execute unless score @s gha.cooldown matches 6.. run return fail
scoreboard players reset @s gha.cooldown

playsound entity.arrow.shoot player @a ~ ~ ~ 0.35 1.5 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 1.25 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/pink_typhoon"}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}}
execute if entity @s[tag=gha.pink_typhoon] as @n[type=item_display, tag=gha.entity.init, distance=..5] run return run function gha:item/event/pink_typhoon/projectile_1
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/pink_typhoon/projectile_2
tag @s add gha.pink_typhoon