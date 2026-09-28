scoreboard players add @s gha.entity.tick 1
execute if entity @s[tag=!gha.solchain.return] run scoreboard players add @s gha.entity.tick.second 1
execute if entity @s[tag=gha.solchain.return] run scoreboard players remove @s gha.entity.tick.second 1

data modify entity @s item.components."minecraft:item_model" set value "gha:particle/solchain_top"
data modify entity @n[type=item_display, distance=..3, tag=gha.entity.sub] item.components."minecraft:item_model" set value "gha:particle/solchain"
data modify entity @s teleport_duration set value 1
data modify entity @n[type=item_display, distance=..3, tag=gha.entity.sub] teleport_duration set value 1
execute store result entity @n[type=item_display, distance=..3, tag=gha.entity.sub] transformation.scale[1] float 3 run scoreboard players get @s gha.entity.tick.second
execute store result entity @n[type=item_display, distance=..3, tag=gha.entity.sub] transformation.translation[2] float -1.5 run scoreboard players get @s gha.entity.tick.second

execute unless function gha:entity/projectile/solchain/move run function gha:entity/projectile/solchain/return

execute if entity @s[tag=!gha.solchain.return] if score @s gha.entity.tick matches 5 run function gha:entity/projectile/solchain/return
execute if score @s gha.entity.tick matches 10 at @s run function gha:entity/projectile/solchain/kill with entity @s data