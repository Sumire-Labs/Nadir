$damage @s 64 gha:player_ignore_cooldown by @p[distance=..5, nbt={UUID:$(u)}]
execute unless score @s gha.effect.stopped matches 20.. run scoreboard players set @s gha.effect.stopped 20
tag @s add gha.entity.effect
data modify entity @n[distance=..0.001,tag=gha.entity,type=item_display] data.h append from entity @s UUID