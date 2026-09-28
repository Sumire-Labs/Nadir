scoreboard players operation $gha:temp.player gha.respawn_duration = $gha:world.respawn gha.respawn_duration
scoreboard players operation $gha:temp.player gha.respawn_duration -= @s gha.respawn_timer
scoreboard players operation $gha:temp.player gha.respawn_duration /= $gha:const.20 gha.const
scoreboard players add $gha:temp.player gha.respawn_duration 1

title @s subtitle {score:{name:"$gha:temp.player", objective:"gha.respawn_duration"}, color:"red", bold:true}
title @s title {translate:"text.gha.respawn", color:"red", bold:true}
execute if score @s gha.respawn_timer >= $gha:world.respawn gha.respawn_duration run function gha:player/death/respawn