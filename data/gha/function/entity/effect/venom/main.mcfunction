scoreboard players remove @s gha.effect.venom 1

tag @s add gha.entity.effect

particle dust{color:[0.8, 0.0, 0.8], scale:1} ~ ~1 ~ 0.3 0.5 0.3 0 5

scoreboard players operation $gha:temp.effect gha.temp = @s gha.effect.venom
scoreboard players operation $gha:temp.effect gha.temp %= $gha:const.10 gha.const
execute if score $gha:temp.effect gha.temp matches 0 run damage @s 4 gha:venom