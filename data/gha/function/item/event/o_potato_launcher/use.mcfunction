advancement revoke @s only gha:use/o_potato_launcher
scoreboard players reset @s gha.cooldown

execute if entity @s[gamemode=creative] run return run function gha:item/event/o_potato_launcher/shot
execute if items entity @s container.* baked_potato run return run function gha:item/event/o_potato_launcher/shot
playsound block.dispenser.fail player @s ~ ~ ~ 1 1.2 0