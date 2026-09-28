advancement revoke @s only gha:use/burning_rod
scoreboard players reset @s gha.cooldown

playsound entity.arrow.shoot player @a ~ ~ ~ 0.35 1.5 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 1.25 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/burning_rod"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}, Passengers:[{id: item_display, Tags:[gha.entity.sub], brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}}]}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/_generic/projectile