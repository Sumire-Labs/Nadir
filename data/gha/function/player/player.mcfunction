execute if score @s gha.death matches 1.. run function gha:player/death/respawned
execute if entity @s[tag=gha.player.dead] run return run function gha:player/death/respawning
execute if entity @s[tag=!gha.player] run function gha:player/init/init with entity @s

effect give @s resistance infinite 10 true
effect give @s instant_health infinite 10 true

execute store result score $gha:temp.player gha.selected_slot run data get entity @s SelectedItemSlot
execute unless score @s gha.selected_slot = $gha:temp.player gha.selected_slot run function gha:player/selected_item/inventory_changed

execute if data entity @s SelectedItem.components."minecraft:custom_data".g run function gha:item/item with entity @s SelectedItem.components."minecraft:custom_data"

execute unless score @s gha.regen_timer < @s gha.regen_rate run function gha:player/health/regen
execute if score @s gha.heal matches 1.. run function gha:player/health/heal
execute if entity @s[gamemode=!creative,gamemode=!spectator] run function gha:player/not_invulnerable
data remove storage gha:temp temp.bar

clear @s *[custom_data~{r:1b}]

#execute if entity @s[gamemode=!creative, gamemode=!spectator] run fill ~-2 ~ ~-2 ~2 ~3 ~2 air replace nether_portal destroy
#execute if entity @s[gamemode=!creative, gamemode=!spectator] if dimension the_nether run damage @s 1 gha:constant

scoreboard players reset @s gha.attack
tag @s remove gha.inventory_changed