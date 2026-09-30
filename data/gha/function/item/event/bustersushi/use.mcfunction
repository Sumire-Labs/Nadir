advancement revoke @s only gha.generated:use/bustersushi
scoreboard players reset @s gha.cooldown

execute if score @s gha.weapon.bustersushi matches 1.. run return run function gha:item/event/bustersushi/shot

execute if function gha:item/event/bustersushi/reload run return run function gha:item/event/bustersushi/reloaded
playsound block.dispenser.fail player @s ~ ~ ~ 1 1.2 0