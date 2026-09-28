scoreboard players set @s gha.cooldown_max 50
execute if score @s gha.cooldown_max <= @s gha.weapon.bustersushi run return run data modify storage gha:temp temp.bar.o set value {font:"gha:cooldown", translate:"bar.gha.50", color:"aqua"}
scoreboard players operation @s gha.cooldown_calculate = @s gha.weapon.bustersushi
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.50 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= @s gha.cooldown_max
function gha:item/event/bustersushi/show_bar with storage gha:temp temp.bar