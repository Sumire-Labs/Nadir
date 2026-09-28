scoreboard players set @s gha.cooldown_max 10
execute if score @s gha.cooldown_max <= @s gha.weapon.shining_dagger run return run data modify storage gha:temp temp.bar.o set value {font:"gha:cooldown", translate:"bar.gha.50", color:"aqua"}

scoreboard players operation @s gha.cooldown_calculate = @s gha.weapon.shining_dagger
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.50 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= @s gha.cooldown_max
function gha:item/event/shining_dagger/show_bar with storage gha:temp temp.bar