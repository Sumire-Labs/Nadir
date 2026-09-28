title @s times 0 10 20
title @s actionbar ""
scoreboard players reset @s gha.respawn_timer
tag @s add gha.player.dead
posteffect remove @s gha:black
tellraw @a {translate:"death.attack.generic", with:[{selector:"@s"}], color:"dark_red"}

function gha:player/death/gamemode/get
gamemode spectator
attribute @s air_drag_modifier modifier add gha:dead 100 add_value