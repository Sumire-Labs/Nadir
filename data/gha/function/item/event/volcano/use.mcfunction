advancement revoke @s only gha.generated:use/volcano
execute unless score @s gha.cooldown matches 32.. run return fail
scoreboard players reset @s gha.cooldown

playsound entity.player.attack.sweep player @a ~ ~ ~ 0.75 0.5 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 0.5 0
summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"slash/volcano"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"gha:particle/volcano_slash",custom_model_data:{floats:[0]}}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 1.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [7.0, 7.0, 0.5], translation: [0.0, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/_generic/slash