advancement revoke @s only gha:use/hunter_shortsword
scoreboard players reset @s gha.cooldown

playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1 0
execute positioned ~ ~1.2 ~ positioned ^ ^ ^1.5 run function gha:item/event/hunter_shortsword/sweep with entity @s