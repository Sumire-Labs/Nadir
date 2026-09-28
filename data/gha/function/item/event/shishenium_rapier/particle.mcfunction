scoreboard players set $strength player_motion.api.launch 7000
execute if data entity @s {OnGround:1b} rotated ~ -2 run function player_motion:api/launch_looking
execute if data entity @s {OnGround:0b} run function gha:item/event/shishenium_rapier/in_air

playsound entity.player.attack.sweep player @a ~ ~ ~ 0.5 0.75 0
particle end_rod ^ ^ ^1
particle end_rod ^0.25 ^ ^0.8
particle end_rod ^-0.25 ^ ^0.8
particle end_rod ^0.5 ^ ^0.6
particle end_rod ^-0.5 ^ ^0.6
particle end_rod ^0.75 ^ ^0.4
particle end_rod ^-0.75 ^ ^0.4

particle end_rod ^-0.75 ^ ^0.3
particle end_rod ^0.75 ^ ^0.3
particle end_rod ^-0.75 ^ ^
particle end_rod ^0.75 ^ ^
particle end_rod ^0.75 ^ ^-0.3
particle end_rod ^-0.75 ^ ^-0.3

particle end_rod ^-0.75 ^ ^-0.6
particle end_rod ^0.75 ^ ^-0.6
particle end_rod ^-0.75 ^ ^-0.9
particle end_rod ^0.75 ^ ^-0.9
particle end_rod ^0.75 ^ ^-1.2
particle end_rod ^-0.75 ^ ^-1.2