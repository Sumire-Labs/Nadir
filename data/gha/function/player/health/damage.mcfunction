# ダメージ軽減
execute store result score $gha:temp.player gha.temp run attribute @s armor_toughness get 10000
scoreboard players set $gha:temp.player gha.damage_taken 10000
scoreboard players operation $gha:temp.player gha.damage_taken -= $gha:temp.player gha.temp
scoreboard players operation @s gha.damage_taken *= $gha:temp.player gha.damage_taken
scoreboard players operation @s gha.damage_taken /= $gha:const.10000 gha.const

execute store result score $gha:temp.player gha.temp run attribute @s armor get 10000
scoreboard players operation @s gha.damage_taken -= $gha:temp.player gha.temp

# HPに適用
execute if score @s gha.damage_taken matches ..0 run scoreboard players set @s gha.damage_taken 1
scoreboard players operation @s gha.health -= @s gha.damage_taken
scoreboard players reset @s gha.damage_taken

# 死
execute if score @s gha.health matches ..0 run return run function gha:player/death/death