advancement revoke @s only gha.generated:use/frostburn_saber
scoreboard players reset @s gha.cooldown

playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 0.5 0
summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"slash/frostburn_saber"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"gha:particle/frostburn_saber_slash",custom_model_data:{floats:[0]}}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [4.0, 4.0, 0.5], translation: [-0.2, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/_generic/slash