scoreboard players add @s gha.entity.tick.second 1
execute if score @s gha.entity.tick.second matches ..400 run return run function gha:entity/mob/algheti/idle
execute if score @s gha.entity.tick.second matches ..500 run return run function gha:entity/mob/algheti/summon_pillar/summon_pillar
execute if score @s gha.entity.tick.second matches ..1000 run return run function gha:entity/mob/algheti/pillar_protect/pillar_protect
execute if score @s gha.entity.tick.second matches ..1500 run return run function gha:entity/mob/algheti/idle
scoreboard players set @s gha.entity.tick.second 0