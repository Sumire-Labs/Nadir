execute if entity @p[distance=..20] unless block ~ ~ ~ furnace run return run function gha:entity/block/energized_furnace/break
execute if block ~ ~ ~ furnace[lit=true] run return run function gha:entity/block/energized_furnace/smelt
execute if entity @s[tag=gha.furnace.active] run function gha:entity/block/energized_furnace/unlit