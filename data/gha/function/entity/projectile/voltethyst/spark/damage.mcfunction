scoreboard players add @n[tag=gha.entity,distance=..0.001,type=marker] gha.entity.hit_count 1
data modify entity @n[distance=..0.001,tag=gha.entity,type=marker] data.h append from entity @s UUID
execute at @s run playsound block.glass.break player @a ~ ~ ~ 1 2 0
particle end_rod ~ ~ ~ 0 0 0 0.1 3 force
$damage @s 5 gha:player_no_knockback by @p[distance=..1000, nbt={UUID:$(u)}]
execute as @n[distance=..0.001,tag=gha.entity,type=marker] if entity @n[type=#gha:living, distance=..15] run function gha:entity/projectile/voltethyst/spark/chain_detect with entity @s data