data modify entity @s data.c set from block ~ ~ ~ Items
execute if entity @s[tag=gha.can_craft] run function gha:entity/block/workbench/craft/reset_craft
execute if data block ~ ~ ~ {Items:[]} positioned ~ ~0.7 ~ run return run kill @n[distance=..0.001,tag=gha.craft_interaction,type=interaction]

data modify storage gha:temp temp.craft.i set from block ~ ~ ~ Items
data remove storage gha:temp temp.craft.i[].count
data modify storage gha:temp temp.craft.g set value [0, 0, 0, 0, 0, 0, 0, 0, 0]

data modify storage gha:temp temp.craft.g[0] set from storage gha:temp temp.craft.i[0].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[1] set from storage gha:temp temp.craft.i[1].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[2] set from storage gha:temp temp.craft.i[2].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[3] set from storage gha:temp temp.craft.i[3].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[4] set from storage gha:temp temp.craft.i[4].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[5] set from storage gha:temp temp.craft.i[5].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[6] set from storage gha:temp temp.craft.i[6].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[7] set from storage gha:temp temp.craft.i[7].components."minecraft:custom_data".g
data modify storage gha:temp temp.craft.g[8] set from storage gha:temp temp.craft.i[8].components."minecraft:custom_data".g

data remove storage gha:temp temp.craft.i[].components
data modify storage gha:temp temp.craft.i[0].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[0]
data modify storage gha:temp temp.craft.i[1].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[1]
data modify storage gha:temp temp.craft.i[2].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[2]
data modify storage gha:temp temp.craft.i[3].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[3]
data modify storage gha:temp temp.craft.i[4].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[4]
data modify storage gha:temp temp.craft.i[5].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[5]
data modify storage gha:temp temp.craft.i[6].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[6]
data modify storage gha:temp temp.craft.i[7].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[7]
data modify storage gha:temp temp.craft.i[8].components."minecraft:custom_data".g set from storage gha:temp temp.craft.g[8]
data remove storage gha:temp temp.craft.i[{components: {"minecraft:custom_data": {g: 0}}}].components

execute unless data storage gha:temp temp.craft.i[1] run data modify storage gha:temp temp.craft.i append value 1
execute unless data storage gha:temp temp.craft.i[2] run data modify storage gha:temp temp.craft.i append value 2
execute unless data storage gha:temp temp.craft.i[3] run data modify storage gha:temp temp.craft.i append value 3
execute unless data storage gha:temp temp.craft.i[4] run data modify storage gha:temp temp.craft.i append value 4
execute unless data storage gha:temp temp.craft.i[5] run data modify storage gha:temp temp.craft.i append value 5
execute unless data storage gha:temp temp.craft.i[6] run data modify storage gha:temp temp.craft.i append value 6
execute unless data storage gha:temp temp.craft.i[7] run data modify storage gha:temp temp.craft.i append value 7
execute unless data storage gha:temp temp.craft.i[8] run data modify storage gha:temp temp.craft.i append value 8

execute if function gha:entity/block/workbench/recipe/recipe_shape if function gha:entity/block/workbench/recipe/recipe_shape_2_ run function gha:entity/block/workbench/recipe/count_check with storage gha:temp temp.craft
execute if entity @s[tag=gha.can_craft] run return fail

data remove storage gha:temp temp.craft.i[].Slot
execute if function gha:entity/block/workbench/recipe/shapeless/recipe_ingredient if function gha:entity/block/workbench/recipe/shapeless/recipe_ingredient_2_ run function gha:entity/block/workbench/recipe/shapeless/count_check with storage gha:temp temp.craft
execute unless entity @s[tag=gha.can_craft] positioned ~ ~0.7 ~ run return run kill @n[distance=..0.001,tag=gha.craft_interaction,type=interaction]