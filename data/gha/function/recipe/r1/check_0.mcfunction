data remove storage gha:temp temp.craft.d
data modify storage gha:temp temp.craft.d append from block ~ ~ ~ Items[{'id': 'minecraft:lapis_lazuli'}]
execute unless function gha:recipe/r1/check_00 run return fail
execute unless function gha:recipe/r1/check_01 run return fail
execute unless function gha:recipe/r1/check_02 run return fail
execute unless function gha:recipe/r1/check_03 run return fail
return 1