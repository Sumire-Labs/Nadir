execute store result score $gha:temp.effect gha.temp run data get entity @s Fire
execute if score $gha:temp.effect gha.temp matches ..200 run data modify entity @s Fire set value 200
$return run damage @s 85 gha:player_ignore_cooldown by @p[distance=..1000, nbt={UUID:$(u)}]