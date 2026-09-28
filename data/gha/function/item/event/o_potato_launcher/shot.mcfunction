execute if entity @s[gamemode=!creative] run clear @s baked_potato 1

playsound block.dispenser.launch player @a ~ ~ ~ 1 1 0
playsound minecraft:block.slime_block.fall player @a ~ ~ ~ 0.5 0.5 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/o_potato_launcher"}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [1.0, 1.0, 1.0], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/_generic/projectile