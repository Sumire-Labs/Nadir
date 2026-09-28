execute unless score @s gha.effect.venom matches 100.. run scoreboard players set @s gha.effect.venom 100
tag @s add gha.entity.effect
$return run damage @s 14 gha:player_no_knockback by @p[distance=..1000, nbt={UUID:$(u)}]