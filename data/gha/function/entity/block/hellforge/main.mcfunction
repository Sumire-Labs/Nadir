execute if entity @p[distance=..20] unless block ~ ~ ~ furnace run return run function gha:entity/block/hellforge/break
execute if block ~ ~ ~ furnace[lit=true] run return run function gha:entity/block/hellforge/smelt
execute if entity @s[tag=gha.furnace.active] run function gha:entity/block/hellforge/unlit