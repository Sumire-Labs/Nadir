execute if entity @s[tag=gha.player.survival] run return run function gha:player/death/gamemode/survival
execute if entity @s[tag=gha.player.adventure] run return run function gha:player/death/gamemode/adventure
execute if entity @s[tag=gha.player.creative] run return run function gha:player/death/gamemode/creative
tag @s remove gha.player.spectator