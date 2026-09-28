data remove storage gha:temp temp.craft.d
data modify storage gha:temp temp.craft.d append from block ~ ~ ~ Items[{'id': 'minecraft:iron_ingot'}]
execute unless function gha:recipe/r0/check_00 run return fail
execute unless function gha:recipe/r0/check_01 run return fail
execute unless function gha:recipe/r0/check_02 run return fail
execute unless function gha:recipe/r0/check_03 run return fail
execute unless function gha:recipe/r0/check_04 run return fail
execute unless function gha:recipe/r0/check_05 run return fail
execute unless function gha:recipe/r0/check_06 run return fail
execute unless function gha:recipe/r0/check_07 run return fail
return 1