particle explosion ~ ~ ~ 0.75 0.75 0.75 0 3 force
playsound entity.generic.explode player @a ~ ~ ~ 1 1 0
$execute positioned ~-1.25 ~-1.25 ~-1.25 as @e[dx=2.5, dy=2.5, dz=2.5, type=#gha:living_no_player] run damage @s 12 gha:player_ignore_cooldown by @p[distance=..1000, nbt={UUID:$(u)}]
execute positioned ~-2 ~-2 ~-2 as @a[dx=4, dy=4, dz=4] run damage @s 10 explosion
kill