execute unless score @s gha.weapon.shining_dagger matches 1.. run return run playsound minecraft:block.wool.hit player @s ~ ~ ~ 1 1.5 0
scoreboard players remove @s gha.weapon.shining_dagger 1
playsound item.trident.throw player @a ~ ~ ~ 1 2 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], item_display:"fixed", data:{g:"projectile/shining_dagger"}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.5, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [1.0, 1.0, 1.0], translation: [0.0, 0.0, 0.0]}}
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/_generic/projectile