playsound item.trident.throw player @a ~ ~ ~ 1 2 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], brightness:{block:15, sky:15}, item_display:"fixed", data:{g:"projectile/sunrise"}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.5, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [1.0, 1.0, 1.0], translation: [0.0, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/_generic/projectile