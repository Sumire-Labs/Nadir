execute if score @s gha.weapon.crimson_katana matches ..-1 run scoreboard players set @s gha.weapon.crimson_katana 0
execute if score @s gha.attack matches 1.. run function gha:item/event/crimson_katana/attack

scoreboard players set @s gha.cooldown_max 500
scoreboard players operation @s gha.cooldown_calculate = @s gha.weapon.crimson_katana
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.50 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= @s gha.cooldown_max
function gha:item/event/crimson_katana/show_bar with storage gha:temp temp.bar