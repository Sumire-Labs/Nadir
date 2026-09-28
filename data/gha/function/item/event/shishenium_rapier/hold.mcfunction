scoreboard players set @s gha.cooldown_max 40
function gha:item/cooldown/bar

execute if score @s gha.weapon.shishenium_rapier matches 1.. positioned ~ ~1.2 ~ rotated ~ 0 run function gha:item/event/shishenium_rapier/charge