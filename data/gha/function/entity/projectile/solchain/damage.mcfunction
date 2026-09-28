execute as @n[type=item_display, tag=gha.entity, distance=..0.001] run function gha:entity/projectile/solchain/return
data modify entity @n[type=item_display, distance=..0.001, tag=gha.entity] data.h append from entity @s UUID
$damage @s 6 gha:player_ignore_cooldown by @p[distance=..1000, nbt={UUID:$(u)}]