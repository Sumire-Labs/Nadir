# warn-off-file execute-group
execute if score @s gha.entity.tick.second matches 401 run function gha:entity/mob/algheti/summon_pillar/start

execute if score @s gha.entity.tick.second matches 420 as @n[tag=aj.algheti.root,distance=..100,type=item_display] run function aj:algheti/animations/summon_pillars/play_exclusive

execute at @s run function gha:entity/mob/algheti/summon_pillar/move with entity @s data
execute at @s run function gha:entity/mob/algheti/summon_pillar/move with entity @s data
execute at @s run particle firework ~ ~ ~ 0.3 0.3 0.3 0.35 1 force

execute if score @s gha.entity.tick.second matches 500 run function gha:entity/mob/algheti/summon_pillar/end