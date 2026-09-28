execute store result score $gha:temp.craft gha.craft.5 run data get storage gha:temp temp.craft.d[2].count
scoreboard players remove $gha:temp.craft gha.craft.5 1
execute if score $gha:temp.craft gha.craft.5 matches ..-1 run return fail
data modify storage gha:temp temp.craft.c append from storage gha:temp temp.craft.d[2]
return run data remove storage gha:temp temp.craft.d[2]