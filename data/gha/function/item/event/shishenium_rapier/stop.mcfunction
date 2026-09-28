scoreboard players reset @s gha.weapon.shishenium_rapier

playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 1 1.25 0
scoreboard players set $strength player_motion.api.launch 20000
execute rotated ~180 0 run function player_motion:api/launch_looking