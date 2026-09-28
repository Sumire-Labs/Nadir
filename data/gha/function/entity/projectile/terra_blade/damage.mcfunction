$damage @s 36 gha:player_ignore_cooldown by @p[distance=..1000, nbt={UUID:$(u)}]
data modify entity @n[type=item_display, distance=..0.001, tag=gha.entity] data.h append from entity @s UUID
scoreboard players add @n[type=item_display, distance=..0.001, tag=gha.entity] gha.entity.hit_count 1
$execute facing entity @p[distance=..1000, nbt={UUID:$(u)}] eyes positioned as @s positioned ^ ^ ^1 run function gha:entity/projectile/terra_blade/hit_particle