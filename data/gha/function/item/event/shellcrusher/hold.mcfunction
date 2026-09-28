execute unless predicate gha:sneaking run return run function gha:item/event/shellcrusher/reset

scoreboard players add @s gha.weapon.shellcrusher 1

execute if score @s gha.weapon.shellcrusher matches 20.. run return run function gha:item/event/shellcrusher/charged

scoreboard players set @s gha.cooldown_max 20
particle electric_spark ~ ~0.05 ~ 0 0 0 0.5 3 force
scoreboard players operation @s gha.cooldown_calculate = @s gha.weapon.shellcrusher
scoreboard players operation @s gha.cooldown_calculate *= $gha:const.50 gha.const
execute store result storage gha:temp temp.bar.c int 1 run scoreboard players operation @s gha.cooldown_calculate /= @s gha.cooldown_max
function gha:item/event/shellcrusher/show_bar with storage gha:temp temp.bar