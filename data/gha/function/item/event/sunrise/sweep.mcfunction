particle sweep_attack ^ ^ ^0.25 0 0 0 0 0 force
particle lava ^ ^ ^0.35 0 0 0 0 5 force
$execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#gha:living, dx=0, nbt=!{UUID:$(UUID)}] positioned ~0.5 ~-0.7 ~0.5 positioned ^ ^ ^-1.5 run function gha:item/event/sunrise/damage
execute at @s run function gha:item/event/sunrise/shot