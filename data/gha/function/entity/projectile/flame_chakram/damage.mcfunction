data modify entity @n[type=item_display, distance=..0.001, tag=gha.entity] data.h append from entity @s UUID
execute as @n[type=item_display, distance=..0.001, tag=gha.entity] unless score @s gha.entity.tick matches 15.. positioned ^ ^ ^0.5 facing entity @s feet run function gha:entity/projectile/flame_chakram/mob_ricochet

execute store result score $gha:temp.effect gha.temp run data get entity @s Fire
execute if score $gha:temp.effect gha.temp matches ..100 run data modify entity @s Fire set value 100
$damage @s 25 gha:player_ignore_cooldown by @p[distance=..1000, nbt={UUID:$(u)}]