title @s subtitle ""
title @s title ""
tag @s remove gha.player.dead
execute store result score @s gha.health run attribute @s max_health get 10

scoreboard players reset @s gha.damage_taken
attribute @s air_drag_modifier modifier remove gha:dead
kill

function gha:player/death/gamemode/restore