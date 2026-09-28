data remove block 1000000 0 1000000 Items
execute unless items block ~ ~ ~ container.25 command_block[custom_data={r:1b}] run item replace block 1000000 0 1000000 container.0 from block ~ ~ ~ container.25
execute unless items block ~ ~ ~ container.26 command_block[custom_data={r:1b}] run item replace block 1000000 0 1000000 container.1 from block ~ ~ ~ container.26
loot give @p[distance=..20] mine 1000000 0 1000000 debug_stick

function gha:entity/block/gold_storage_crate/store_inventory with entity @s data

execute store result entity @s data.p int 1 run scoreboard players add @s gha.number 1
execute if score @s gha.number matches 16.. store result entity @s data.p int 1 run scoreboard players set @s gha.number 0
scoreboard players operation @s gha.page = @s gha.number
execute store result entity @s data.d int 1 run scoreboard players add @s gha.page 1
function gha:entity/block/diamond_storage_crate/page with entity @s data
