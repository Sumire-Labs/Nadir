function gha:entity/place/workbench/get_light_level
data modify entity @s brightness.sky set from entity @s brightness.block
tag @s remove gha.entity.init

function gha:recipe/_page/1