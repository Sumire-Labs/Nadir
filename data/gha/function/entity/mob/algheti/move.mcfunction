# warn-off-file execute-duplicate
tp ^ ^ ^0.125

execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 positioned 0.0 ~ ~ positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.125 rotated as @s unless block ^ ^ ^0.125 #gha:no_collision facing entity @s feet positioned ^ ^ ^0.5 rotated as @s if block ^ ^ ^-0.125 #gha:no_collision facing entity @s feet facing ^ ^ ^-0.5 positioned as @s run function gha:entity/mob/algheti/ricochet
execute at @s positioned ^ ^ ^0.125 rotated ~180 ~ unless block ^ ^ ^0.125 #gha:no_collision at @s positioned ^ ^ ^-0.125 rotated ~180 ~ if block ^ ^ ^-0.125 #gha:no_collision facing ^ ^ ^-0.5 positioned as @s run function gha:entity/mob/algheti/ricochet
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 positioned ~ ~ 0.0 positioned ^ ^ ^-1 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.125 rotated as @s unless block ^ ^ ^0.125 #gha:no_collision facing entity @s feet positioned ^ ^ ^0.5 rotated as @s if block ^ ^ ^-0.125 #gha:no_collision facing entity @s feet facing ^ ^ ^-0.5 positioned as @s run function gha:entity/mob/algheti/ricochet

execute if entity @s[tag=!gha.reflected] positioned ^ ^ ^0.125 unless block ~ ~ ~ #gha:no_collision facing entity @s feet run function gha:entity/mob/algheti/ricochet