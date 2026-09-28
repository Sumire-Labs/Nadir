execute unless score @s gha.effect.frostburn matches 100.. run scoreboard players set @s gha.effect.frostburn 100
tag @s add gha.entity.effect
$return run damage @s 10 gha:player_no_knockback by @p[distance=..1000, nbt={UUID:$(u)}]