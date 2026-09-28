execute if score @s gha.weapon.shellcrusher matches 20 run function gha:item/event/shellcrusher/particle
particle dust{color:[0.2, 1.0, 0.4], scale:1} ~ ~0.05 ~ 0.3 0.1 0.3 0.5 3 force
data modify storage gha:temp temp.bar.o set value {font:"gha:cooldown", translate:"bar.gha.50", color:"light_purple"}
execute if score @s gha.attack matches 1.. positioned ~ ~1.2 ~ positioned ^ ^ ^2.5 run function gha:item/event/shellcrusher/attack