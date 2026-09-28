$execute at @s positioned ^ ^ ^1 positioned ~-$(y) ~-0.5 ~-$(y) as @e[type=#gha:living, dx=$(t), dz=$(t), nbt=!{UUID:$(u)}] run tag @s add gha.detected
execute as @e[tag=gha.detected, distance=..5] run function gha:entity/projectile/terra_blade/check with entity @s
tag @e[type=#gha:living, tag=gha.detected, distance=..5] remove gha.detected