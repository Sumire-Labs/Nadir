execute rotated 0 0 run function gha:entity/mob/algheti/summon_pillar/pillar_summon

$spreadplayers $(x) $(z) 5 15 false @e[tag=aj.algheti_pillar.root,distance=..20,type=item_display]
execute as @e[tag=aj.algheti_pillar.root,distance=..100,type=item_display] at @s run function gha:entity/mob/algheti/summon_pillar/entity_summon with entity @n[tag=gha.boss.algheti,distance=..100,type=slime] data