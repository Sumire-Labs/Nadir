execute store result score $gha:temp.mob gha.damage_taken run data get entity @s Health
scoreboard players set $gha:temp.mob gha.health 1024
scoreboard players operation $gha:temp.mob gha.health -= $gha:temp.mob gha.damage_taken
scoreboard players operation @s gha.health -= $gha:temp.mob gha.health

execute if score @s gha.health matches ..0 run return run function gha:entity/mob/algheti/death
playsound entity.blaze.hurt hostile @a ~ ~ ~ 2 2 0
data modify entity @s Health set value 1024.0f