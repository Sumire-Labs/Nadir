advancement revoke @s only gha:use/nether_brick_mattock
scoreboard players reset @s gha.cooldown

execute if entity @s[gamemode=!creative] run item modify entity @s weapon.mainhand gha:consume
playsound item.trident.throw player @a ~ ~ ~ 1 1.5 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/nether_brick_mattock"}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 3, transformation: {left_rotation: [0.0, -1.0, 0, 1.0], right_rotation: [0.0, 0, 0, 1.0], scale: [1.0, 1.0, 1.0], translation: [0.0, 0.0, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/_generic/projectile