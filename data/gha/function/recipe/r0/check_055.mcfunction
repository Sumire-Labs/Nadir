execute store result score $gha:temp.craft gha.craft.6 run data get storage gha:temp temp.craft.d[5].count
scoreboard players remove $gha:temp.craft gha.craft.6 1
execute if score $gha:temp.craft gha.craft.6 matches ..-1 run return fail
data modify storage gha:temp temp.craft.c append from storage gha:temp temp.craft.d[5]
return run data remove storage gha:temp temp.craft.d[5]