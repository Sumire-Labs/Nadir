data modify entity @n[distance=..1,nbt={Item: {id: "minecraft:dropper", count: 1}, Age: 0s},type=item] Item set value {id: "glow_item_frame", count: 1, components: {custom_data: {g: "emerald_storage_cabinet"}, item_name: {translate:"item.gha.emerald_storage_cabinet", color:"green"}, item_model: "gha:emerald_storage_cabinet", entity_data:{id:"glow_item_frame", data:{g:"place/emerald_storage_cabinet"}, Tags:[gha.entity], Fixed:true, Invisible:True, Silent:True}}}

execute store result entity @s data.c.count int 1 run scoreboard players get @s gha.size
data remove entity @s data.c.Slot
function gha:entity/block/copper_storage_cabinet/loot/loot
execute if score @s gha.number matches 1.. run function gha:entity/block/copper_storage_cabinet/loot/remain

kill @e[distance=..5,nbt={Item:{components:{"minecraft:custom_data":{r:1b}}}},type=item]
kill