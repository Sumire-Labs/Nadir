execute store result score $gha:temp.player gha.temp run attribute @s max_health get 10
scoreboard players operation @s gha.health += @s gha.heal
scoreboard players operation @s gha.health < $gha:temp.player gha.temp
scoreboard players reset @s gha.heal