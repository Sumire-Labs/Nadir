scoreboard players remove @s gha.effect.deceiver 1

tag @s add gha.entity.effect

scoreboard players operation $gha:temp.effect gha.temp = @s gha.effect.deceiver
scoreboard players operation $gha:temp.effect gha.temp %= $gha:const.3 gha.const

execute if score $gha:temp.effect gha.temp matches 0 run function gha:entity/effect/deceiver/damage