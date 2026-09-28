tag @s add gha.block.update

item replace block ~ ~ ~ container.5 with command_block
data modify storage gha:temp temp.block.i set from entity @s data.c
data modify storage gha:temp temp.block.i.Slot set value 5b
data modify block ~ ~ ~ Items[{Slot:5b}] set from storage gha:temp temp.block.i
item modify block ~ ~ ~ container.5 gha:max_stack
execute if score @s gha.number >= @s gha.size run return run scoreboard players operation @s gha.number -= @s gha.size

execute store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s gha.number
scoreboard players set @s gha.number 0