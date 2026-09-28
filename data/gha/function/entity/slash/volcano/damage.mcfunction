$damage @s 39 gha:player_ignore_cooldown by @p[distance=..5, nbt={UUID:$(u)}]
execute store result score $gha:temp.effect gha.temp run data get entity @s Fire
execute if score $gha:temp.effect gha.temp matches ..200 run data modify entity @s Fire set value 200
data modify entity @n[distance=..0.001,tag=gha.entity,type=item_display] data.h append from entity @s UUID