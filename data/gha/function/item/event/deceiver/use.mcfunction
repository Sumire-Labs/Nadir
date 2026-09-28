particle gust ^ ^ ^-0.25 0 0 0 0 0 force
scoreboard players set @s gha.weapon.deceiver 0
execute positioned ~-1 ~-0.5 ~-1 as @e[type=#gha:living_no_player, dx=2, dz=2] positioned ~1 ~-0.7 ~1 positioned ^ ^ ^-2.5 run function gha:item/event/deceiver/damage

scoreboard players set $strength player_motion.api.launch 20000
execute rotated ~180 0 run function player_motion:api/launch_looking