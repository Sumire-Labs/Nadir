execute store result score $gha:temp.player gha.temp run attribute @s max_health get 10
execute unless data storage gha:temp temp.bar.o run data modify storage gha:temp temp.bar.o set value ";"
execute if score @s gha.health >= $gha:temp.player gha.temp run return run title @s actionbar [{font:"gha:health", translate:"bar.gha.64", color:"white"}, ":", {interpret:true, nbt:"temp.bar.o", storage:"gha:temp"}, "@"]

scoreboard players operation @s gha.cooldown_calculate = @s gha.health
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.64 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= $gha:temp.player gha.temp
function gha:player/health/show_bar with storage gha:temp temp.bar