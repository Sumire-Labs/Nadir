data modify block 1000000 0 1000000 Items[] set from entity @s data.c
item fill block 1000000 0 1000000 container.* from block 1000000 0 1000000 container.0

loot spawn ~ ~ ~ mine 1000000 0 1000000 debug_stick
scoreboard players operation @s gha.number -= @s gha.size