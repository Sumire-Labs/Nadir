$damage @s 36 gha:player_ignore_cooldown by @p[distance=..5, nbt={UUID:$(u)}]
data modify entity @n[distance=..0.001,tag=gha.entity,type=item_display] data.h append from entity @s UUID
$execute facing entity @p[distance=..1000, nbt={UUID:$(u)}] eyes positioned as @s positioned ^ ^ ^1 run function gha:entity/projectile/terra_blade/hit_particle