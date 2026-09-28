scoreboard players operation $gha:temp.weapon gha.temp = @s gha.weapon.shishenium_rapier
scoreboard players operation $gha:temp.weapon gha.temp %= $gha:const.2 gha.const
execute if score $gha:temp.weapon gha.temp matches 1 run function gha:item/event/shishenium_rapier/particle
execute if function gha:item/event/shishenium_rapier/attack run function gha:item/event/shishenium_rapier/stop

scoreboard players remove @s gha.weapon.shishenium_rapier 1