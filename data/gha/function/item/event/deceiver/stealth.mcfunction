effect give @s invisibility 1 0 true

execute unless function gha:item/event/deceiver/moving_check_stealth run scoreboard players remove @s gha.weapon.deceiver 1
execute if score @s gha.attack matches 1.. positioned ~ ~1.2 ~ positioned ^ ^ ^2.5 run function gha:item/event/deceiver/use

execute if score @s gha.weapon.deceiver matches ..0 run return run function gha:item/event/deceiver/stealth_end
data modify storage gha:temp temp.bar.o set value {font:"gha:cooldown", translate:"bar.gha.50", color:"dark_aqua"}

scoreboard players set @s gha.cooldown_max 100
scoreboard players operation @s gha.cooldown_calculate = @s gha.weapon.deceiver
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.50 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= @s gha.cooldown_max
function gha:item/event/deceiver/show_bar_stealth with storage gha:temp temp.bar