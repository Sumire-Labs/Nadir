advancement revoke @s only gha:use/voltethyst
execute unless score @s gha.cooldown matches 12.. run return fail
execute if score @s gha.weapon.voltethyst matches 0 unless score @s gha.cooldown matches 18.. run return fail
scoreboard players reset @s gha.cooldown
scoreboard players add @s gha.weapon.voltethyst 1

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1 0
execute if score @s gha.weapon.voltethyst matches 3 run return run function gha:item/event/voltethyst/shot
execute positioned ~ ~1.2 ~ positioned ^ ^ ^2 run function gha:item/event/voltethyst/sweep with entity @s