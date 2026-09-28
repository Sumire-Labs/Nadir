data modify storage gha:temp temp.craft.c append from block ~ ~ ~ Items[{'id': 'minecraft:command_block', 'components': {'minecraft:custom_data': {'g': 'divine_alloy_ingot'}}}]
execute store result score $gha:temp.craft gha.craft.0 run data get storage gha:temp temp.craft.c[-1].count
scoreboard players remove $gha:temp.craft gha.craft.0 1
execute if score $gha:temp.craft gha.craft.0 matches ..-1 run return fail
return run summon item_display ~ ~0.7 ~ {'Tags': ['gha.craft_display'], 'billboard': 'vertical', 'item_display': 'gui', 'transformation': {'left_rotation': [0.0, 0.0, 0.0, 1.0], 'right_rotation': [0.0, 0.0, 0.0, 1.0], 'scale': [0.5, 0.5, 0.5], 'translation': [0.0, 0.25, 0.0]}, 'item': {'id': 'command_block', 'count': 1, 'components': {'item_model': 'gha:divine_alloy_nugget'}}}