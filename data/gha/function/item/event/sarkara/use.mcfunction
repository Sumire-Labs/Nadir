advancement revoke @s only gha.generated:use/sarkara
execute unless score @s gha.cooldown matches 15.. run return fail
scoreboard players reset @s gha.cooldown

execute if entity @s[gamemode=creative] run return run function gha:item/event/sarkara/shot
execute if items entity @s container.* sugar run return run function gha:item/event/sarkara/shot