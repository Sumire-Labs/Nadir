scoreboard players remove @s gha.effect.frostburn 1
execute if score @s gha.effect.frostburn matches 0 run return run attribute @s movement_speed modifier remove gha:effect.frostburn

tag @s add gha.entity.effect

particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0 5

attribute @s movement_speed modifier add gha:effect.frostburn -0.33 add_multiplied_base

scoreboard players operation $gha:temp.effect gha.temp = @s gha.effect.frostburn
scoreboard players operation $gha:temp.effect gha.temp %= $gha:const.20 gha.const
execute if score $gha:temp.effect gha.temp matches 0 run damage @s 1 gha:frostburn