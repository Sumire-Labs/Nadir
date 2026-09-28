data modify entity @n[distance=..1,nbt={Item: {id: "minecraft:barrel", count: 1}, Age: 0s},type=item] Item set value {id: "glow_item_frame", count: 1, components: {custom_data: {g: "gold_storage_crate"}, item_name: {translate:"item.gha.gold_storage_crate", color:"white"}, item_model: "gha:gold_storage_crate", entity_data:{id:"glow_item_frame", data:{g:"place/gold_storage_crate"}, Tags:[gha.entity], Fixed:true, Invisible:True, Silent:True}}}

execute unless score @s gha.number matches 0 run function gha:entity/block/gold_storage_crate/drop/0

execute unless score @s gha.number matches 1 run function gha:entity/block/gold_storage_crate/drop/1

execute unless score @s gha.number matches 2 run function gha:entity/block/gold_storage_crate/drop/2

execute unless score @s gha.number matches 3 run function gha:entity/block/gold_storage_crate/drop/3

execute unless score @s gha.number matches 4 run function gha:entity/block/gold_storage_crate/drop/4

kill @e[distance=..5,nbt={Item:{components:{"minecraft:custom_data":{r:1b}}}},type=item]
kill