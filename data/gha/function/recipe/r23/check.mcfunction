execute store result score @s gha.craft.0 run data get block ~ ~ ~ Items[0].count
scoreboard players remove @s gha.craft.0 4
execute if score @s gha.craft.0 matches ..-1 run return fail
execute store result score @s gha.craft.1 run data get block ~ ~ ~ Items[1].count
scoreboard players remove @s gha.craft.1 1
execute if score @s gha.craft.1 matches ..-1 run return fail
execute store result score @s gha.craft.2 run data get block ~ ~ ~ Items[2].count
scoreboard players remove @s gha.craft.2 1
execute if score @s gha.craft.2 matches ..-1 run return fail
return run summon item_display ~ ~0.7 ~ {'Tags': ['gha.craft_display'], 'billboard': 'vertical', 'item_display': 'gui', 'transformation': {'left_rotation': [0.0, 0.0, 0.0, 1.0], 'right_rotation': [0.0, 0.0, 0.0, 1.0], 'scale': [0.5, 0.5, 0.5], 'translation': [0.0, 0.25, 0.0]}, 'item': {'id': 'chain_command_block', 'count': 1, 'components': {'item_model': 'gha:icicle_rod'}}}