execute store result score @s gha.craft.0 run data get block ~ ~ ~ Items[0].count
scoreboard players remove @s gha.craft.0 1
execute if score @s gha.craft.0 matches ..-1 run return fail
execute store result score @s gha.craft.1 run data get block ~ ~ ~ Items[1].count
scoreboard players remove @s gha.craft.1 4
execute if score @s gha.craft.1 matches ..-1 run return fail
execute store result score @s gha.craft.2 run data get block ~ ~ ~ Items[2].count
scoreboard players remove @s gha.craft.2 4
execute if score @s gha.craft.2 matches ..-1 run return fail
execute store result score @s gha.craft.3 run data get block ~ ~ ~ Items[3].count
scoreboard players remove @s gha.craft.3 1
execute if score @s gha.craft.3 matches ..-1 run return fail
execute store result score @s gha.craft.4 run data get block ~ ~ ~ Items[4].count
scoreboard players remove @s gha.craft.4 16
execute if score @s gha.craft.4 matches ..-1 run return fail
execute store result score @s gha.craft.5 run data get block ~ ~ ~ Items[5].count
scoreboard players remove @s gha.craft.5 16
execute if score @s gha.craft.5 matches ..-1 run return fail
execute store result score @s gha.craft.6 run data get block ~ ~ ~ Items[6].count
scoreboard players remove @s gha.craft.6 1
execute if score @s gha.craft.6 matches ..-1 run return fail
execute store result score @s gha.craft.7 run data get block ~ ~ ~ Items[7].count
scoreboard players remove @s gha.craft.7 4
execute if score @s gha.craft.7 matches ..-1 run return fail
execute store result score @s gha.craft.8 run data get block ~ ~ ~ Items[8].count
scoreboard players remove @s gha.craft.8 4
execute if score @s gha.craft.8 matches ..-1 run return fail
return run summon item_display ~ ~0.7 ~ {'Tags': ['gha.craft_display'], 'billboard': 'vertical', 'item_display': 'gui', 'transformation': {'left_rotation': [0.0, 0.0, 0.0, 1.0], 'right_rotation': [0.0, 0.0, 0.0, 1.0], 'scale': [0.5, 0.5, 0.5], 'translation': [0.0, 0.25, 0.0]}, 'item': {'id': 'chain_command_block', 'count': 1, 'components': {'item_model': 'gha:o_potato_launcher'}}}