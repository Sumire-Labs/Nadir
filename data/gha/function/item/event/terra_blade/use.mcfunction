advancement revoke @s only gha.generated:use/terra_blade
execute unless score @s gha.cooldown matches 4.. run return fail
scoreboard players reset @s gha.cooldown

playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 0.5 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.35 2 0
summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"slash/terra_blade"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"gha:particle/terra_blade_slash",custom_model_data:{floats:[0]}}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [7.0, 7.0, 0.5], translation: [-0.5, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/_generic/slash

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/terra_blade"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 7.0, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/terra_blade/projectile