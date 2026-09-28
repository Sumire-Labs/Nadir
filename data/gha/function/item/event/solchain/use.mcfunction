advancement revoke @s only gha:use/solchain
execute if score @s gha.cooldown matches ..7 run return fail

execute if score @s gha.cooldown matches 100.. run tag @s remove gha.solchain
execute if entity @s[tag=gha.solchain] run return fail

scoreboard players reset @s gha.cooldown

playsound entity.egg.throw player @a ~ ~ ~ 1 0.5 0

tag @s add gha.solchain
summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/solchain"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [1.0, 1.0, 0.5], translation: [0.0, 0.0, 0.0]}, Passengers:[{id: item_display, Tags:[gha.entity.sub], brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [1.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.2, 1.0, 0.5], translation: [0.0, 0.0, 0.0]}}]}
execute store result storage gha:temp temp.projectile.x float 0.01 run random value -200..200
execute store result storage gha:temp temp.projectile.y float 0.01 run random value -200..200
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:item/event/solchain/projectile with storage gha:temp temp.projectile
