function gha:entity/place/workbench/entity

execute store result score $gha:temp.block gha.temp run data get entity @p[distance=..10] Rotation[0]
execute if score $gha:temp.block gha.temp matches -45..45 run return run function gha:entity/place/energized_furnace/facing_180
execute if score $gha:temp.block gha.temp matches 45..135 run return run function gha:entity/place/energized_furnace/facing_270
execute if score $gha:temp.block gha.temp matches -135..-45 run return run function gha:entity/place/energized_furnace/facing_90
function gha:entity/place/energized_furnace/facing_0