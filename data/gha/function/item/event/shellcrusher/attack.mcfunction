scoreboard players reset @s gha.weapon.shellcrusher
playsound block.anvil.place player @a ~ ~ ~ 0.5 1 0
playsound entity.generic.explode player @a ~ ~ ~ 0.5 1 0
particle sonic_boom ^ ^ ^-0.25 0 0 0 0 0 force
execute positioned ~-1 ~-0.5 ~-1 as @e[type=#gha:living_no_player, dx=2, dz=2] positioned ~1 ~-0.7 ~1 positioned ^ ^ ^-2.5 run function gha:item/event/shellcrusher/damage
execute positioned ^ ^ ^2 positioned ~-1 ~-0.5 ~-1 as @e[type=#gha:living_no_player, dx=2, dz=2] positioned ~1 ~-0.7 ~1 positioned ^ ^ ^-4.5 run function gha:item/event/shellcrusher/damage