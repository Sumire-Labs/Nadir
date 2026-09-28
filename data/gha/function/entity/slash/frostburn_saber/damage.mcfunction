$damage @s 8 gha:player_ignore_cooldown by @p[distance=..5, nbt={UUID:$(u)}]
execute unless score @s gha.effect.frostburn matches 80.. run scoreboard players set @s gha.effect.frostburn 80
tag @s add gha.entity.effect
data modify entity @n[distance=..0.001,tag=gha.entity,type=item_display] data.h append from entity @s UUID