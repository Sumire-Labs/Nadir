advancement revoke @s only gha:inventory_changed

execute store result score @s gha.selected_slot run data get entity @s SelectedItemSlot

tag @s add gha.inventory_changed

function gha:player/selected_item/store_mainhand with entity @s