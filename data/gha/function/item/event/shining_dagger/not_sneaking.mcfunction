playsound entity.player.attack.sweep player @a ~ ~ ~ 1 1 0
execute positioned ~ ~1.2 ~ positioned ^ ^ ^1.5 run function gha:item/event/shining_dagger/sweep with entity @s
execute if score @s gha.weapon.shining_dagger matches 11.. run scoreboard players set @s gha.weapon.shining_dagger 10