scoreboard players set @s gha.cooldown_max 35
function gha:item/cooldown/bar
execute if score @s gha.cooldown matches 35.. positioned ~ ~1.6 ~ run function gha:item/event/knock_of_shadow/get_location