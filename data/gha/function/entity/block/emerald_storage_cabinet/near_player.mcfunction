execute unless block ~ ~ ~ dropper[facing=up] run return run function gha:entity/block/emerald_storage_cabinet/break
kill @e[nbt={Item:{components:{"minecraft:custom_data":{r:1b}}}},distance=..20,type=item]

execute if items block ~ ~ ~ container.3 * run function gha:entity/block/emerald_storage_cabinet/insert
execute if score @s gha.number matches 1.. unless items block ~ ~ ~ container.5 * run function gha:entity/block/copper_storage_cabinet/eject

execute store result score $gha:temp.block gha.temp if items block ~ ~ ~ container.* command_block[custom_data={r:1b}]
execute unless score $gha:temp.block gha.temp matches 7 run return run function gha:entity/block/emerald_storage_cabinet/reset
execute if entity @s[tag=gha.block.update] run function gha:entity/block/emerald_storage_cabinet/update