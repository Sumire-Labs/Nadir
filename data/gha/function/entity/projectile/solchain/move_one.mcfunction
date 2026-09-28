execute if entity @n[distance=..5, type=#gha:living] run function gha:entity/projectile/solchain/detect with entity @s data

execute if entity @s[tag=!gha.solchain.return] unless block ~ ~ ~ #gha:no_collision run return 1

execute if entity @s[tag=gha.solchain.return] run tp ^ ^ ^-0.5
execute if entity @s[tag=!gha.solchain.return] run tp ^ ^ ^0.5