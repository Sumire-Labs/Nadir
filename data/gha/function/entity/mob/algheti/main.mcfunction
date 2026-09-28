scoreboard players add @s gha.entity.tick 1
execute if score @s gha.entity.tick matches ..61 run return run function gha:entity/mob/algheti/starting/starting

execute store result bossbar gha:algheti value run scoreboard players get @s gha.health

function gha:entity/mob/algheti/state
execute at @s run tp @n[tag=aj.algheti.root,distance=..100,type=item_display] ~ ~-1 ~ 0 0

execute unless data entity @s {Health:1024.0f} run function gha:entity/mob/algheti/damage