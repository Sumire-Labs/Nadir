execute store result block ~ ~ ~ Items[0].count int 1 run scoreboard players get @s gha.craft.0
execute store result block ~ ~ ~ Items[1].count int 1 run scoreboard players get @s gha.craft.1
execute store result block ~ ~ ~ Items[2].count int 1 run scoreboard players get @s gha.craft.2
execute store result block ~ ~ ~ Items[3].count int 1 run scoreboard players get @s gha.craft.3
execute store result block ~ ~ ~ Items[4].count int 1 run scoreboard players get @s gha.craft.4
execute store result block ~ ~ ~ Items[5].count int 1 run scoreboard players get @s gha.craft.5
execute store result block ~ ~ ~ Items[6].count int 1 run scoreboard players get @s gha.craft.6
execute store result block ~ ~ ~ Items[7].count int 1 run scoreboard players get @s gha.craft.7
execute store result block ~ ~ ~ Items[8].count int 1 run scoreboard players get @s gha.craft.8

execute if score @s gha.craft.8 matches 0 run data remove block ~ ~ ~ Items[8]
execute if score @s gha.craft.7 matches 0 run data remove block ~ ~ ~ Items[7]
execute if score @s gha.craft.6 matches 0 run data remove block ~ ~ ~ Items[6]
execute if score @s gha.craft.5 matches 0 run data remove block ~ ~ ~ Items[5]
execute if score @s gha.craft.4 matches 0 run data remove block ~ ~ ~ Items[4]
execute if score @s gha.craft.3 matches 0 run data remove block ~ ~ ~ Items[3]
execute if score @s gha.craft.2 matches 0 run data remove block ~ ~ ~ Items[2]
execute if score @s gha.craft.1 matches 0 run data remove block ~ ~ ~ Items[1]
execute if score @s gha.craft.0 matches 0 run data remove block ~ ~ ~ Items[0]