advancement revoke @s only gha:use/eggregator
scoreboard players reset @s gha.cooldown

execute if entity @s[gamemode=creative] run return run function gha:item/event/eggregator/shot
execute if items entity @s container.* #eggs run return run function gha:item/event/eggregator/shot

playsound block.dispenser.fail player @s ~ ~ ~ 1 1.2 0