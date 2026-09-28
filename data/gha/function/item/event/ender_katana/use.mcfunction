advancement revoke @s only gha:use/crimson_katana
scoreboard players reset @s gha.cooldown
execute unless function gha:item/event/crimson_katana/detect unless score @s gha.weapon.crimson_katana matches 100.. run return fail

execute if predicate gha:sneaking run return fail

playsound block.anvil.place player @a ~ ~ ~ 1 0.75 0

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init", "gha.crimson_katana"], data:{g:"slash/crimson_katana"}, item: {id:"command_block", components:{item_model:"gha:crimson_katana"}}, transformation: {left_rotation: [0.0, 1.0, 0, 1.0], right_rotation: [0.0, 0, 2, 1.0], scale: [1.5, 1.5, 1.0], translation: [0.0, 0.5, 0.0]}}
execute as @n[tag=gha.entity.init,distance=..5,type=item_display] run function gha:item/event/crimson_katana/slash