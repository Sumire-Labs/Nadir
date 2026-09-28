scoreboard players add @n[type=marker, tag=gha.entity, distance=..0.001] gha.entity.hit_count 1
data modify entity @n[type=marker, distance=..0.001, tag=gha.entity] data.h append from entity @s UUID
$damage @s 4 gha:player_ignore_cooldown by @p[distance=..1000, nbt={UUID:$(u)}]