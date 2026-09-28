tag @s add gha.block.update
scoreboard players set $gha:temp.block gha.temp 8000
scoreboard players operation $gha:temp.block gha.temp -= @s gha.number

execute store result score $gha:temp.block gha.temp if items block ~ ~ ~ container.3 *
scoreboard players operation @s gha.number += $gha:temp.block gha.temp

execute if score @s gha.number matches ..8000 run return run item replace block ~ ~ ~ container.3 with air

execute store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players remove @s gha.number 8000
scoreboard players set @s gha.number 8000