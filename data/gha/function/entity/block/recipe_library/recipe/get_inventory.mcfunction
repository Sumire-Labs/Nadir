data modify block 1000000 0 1000000 Items set from block ~ ~ ~ Items
data remove block 1000000 0 1000000 Items[{components:{"minecraft:custom_data":{r:1b}}}]
loot give @p[distance=..20] mine 1000000 0 1000000 debug_stick

function gha:entity/block/recipe_library/recipe/get_slot

data modify block ~ ~ ~ Items set from entity @s data.c