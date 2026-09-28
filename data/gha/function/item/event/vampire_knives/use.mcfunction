advancement revoke @s only gha:use/vampire_knives
execute unless score @s gha.cooldown matches 18.. run return fail
scoreboard players reset @s gha.cooldown

playsound entity.egg.throw player @a ~ ~ ~ 0.75 0.5 0
playsound item.trident.throw player @a ~ ~ ~ 0.35 2 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/vampire_knives"}, brightness:{block: 15, sky: 15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 3, transformation: {left_rotation: [0.0, 1.0, 0, 1.0], right_rotation: [0.0, 0, 1, 1.0], scale: [0.5, 0.5, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/vampire_knives/projectile_1

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/vampire_knives"}, brightness:{block: 15, sky: 15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 3, transformation: {left_rotation: [0.0, 1.0, 0, 1.0], right_rotation: [0.0, 0, 1, 1.0], scale: [0.5, 0.5, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/vampire_knives/projectile_2

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/vampire_knives"}, brightness:{block: 15, sky: 15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 3, transformation: {left_rotation: [0.0, 1.0, 0, 1.0], right_rotation: [0.0, 0, 1, 1.0], scale: [0.5, 0.5, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/_generic/projectile

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/vampire_knives"}, brightness:{block: 15, sky: 15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 3, transformation: {left_rotation: [0.0, 1.0, 0, 1.0], right_rotation: [0.0, 0, 1, 1.0], scale: [0.5, 0.5, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/vampire_knives/projectile_3

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/vampire_knives"}, brightness:{block: 15, sky: 15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 3, transformation: {left_rotation: [0.0, 1.0, 0, 1.0], right_rotation: [0.0, 0, 1, 1.0], scale: [0.5, 0.5, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/vampire_knives/projectile_4