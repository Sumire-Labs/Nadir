execute if score @s gha.weapon.deceiver matches 100.. if entity @s[tag=!gha.deceiver.stealth] run function gha:item/event/deceiver/stealth_start
execute if entity @s[tag=gha.deceiver.stealth] run return run function gha:item/event/deceiver/stealth
execute unless function gha:item/event/deceiver/moving_check run scoreboard players reset @s gha.weapon.deceiver

execute store result score @s gha.x run data get entity @s Pos[0] 100
execute store result score @s gha.y run data get entity @s Pos[1] 100
execute store result score @s gha.z run data get entity @s Pos[2] 100

scoreboard players set @s gha.cooldown_max 75

scoreboard players operation @s gha.cooldown_calculate = @s gha.weapon.deceiver
execute if score @s gha.cooldown_calculate matches ..25 run return fail
particle electric_spark ~ ~0.05 ~ 0 0 0 0.5 3 force
scoreboard players remove @s gha.cooldown_calculate 25
execute if score @s gha.cooldown_max <= @s gha.cooldown_calculate run return run data modify storage gha:temp temp.bar.o set value {font:"gha:cooldown", translate:"bar.gha.50", color:"dark_aqua"}
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.50 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= @s gha.cooldown_max
function gha:item/event/deceiver/show_bar with storage gha:temp temp.bar