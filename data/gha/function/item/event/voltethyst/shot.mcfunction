scoreboard players set @s gha.weapon.voltethyst 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/voltethyst"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [1.5, 1.5, 0.1], translation: [0.0, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/terra_blade/projectile