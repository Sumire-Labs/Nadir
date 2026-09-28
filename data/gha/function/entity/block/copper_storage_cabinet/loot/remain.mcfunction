execute store result entity @s data.c.count int 1 run scoreboard players get @s gha.number
data remove block 1000000 0 1000000 Items
data modify block 1000000 0 1000000 Items append from entity @s data.c
loot spawn ~ ~ ~ mine 1000000 0 1000000 debug_stick