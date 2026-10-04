execute if entity @p[distance=..20] unless block ~ ~ ~ furnace run return run function gha:entity/block/resonant_smelter/break
execute if block ~ ~ ~ furnace[lit=true] run return run function gha:entity/block/resonant_smelter/smelt
execute if entity @s[tag=gha.furnace.active] run function gha:entity/block/resonant_smelter/unlit