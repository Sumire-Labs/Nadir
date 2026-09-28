data modify entity @n[distance=..1, nbt={Item: {id: "minecraft:barrel", count: 1}, Age: 0s},type=item] Item set value {id: "glow_item_frame", count: 1, components: {custom_data: {g: "diamond_storage_crate"}, item_name: {translate:"item.gha.diamond_storage_crate", color:"light_purple"}, item_model: "gha:diamond_storage_crate", entity_data:{id:"glow_item_frame", data:{g:"place/diamond_storage_crate"}, Tags:[gha.entity], Fixed:true, Invisible:True, Silent:True}}}

execute unless score @s gha.number matches 0 run function gha:entity/block/gold_storage_crate/drop/0

execute unless score @s gha.number matches 1 run function gha:entity/block/gold_storage_crate/drop/1

execute unless score @s gha.number matches 2 run function gha:entity/block/gold_storage_crate/drop/2

execute unless score @s gha.number matches 3 run function gha:entity/block/gold_storage_crate/drop/3

execute unless score @s gha.number matches 4 run function gha:entity/block/gold_storage_crate/drop/4

execute unless score @s gha.number matches 5 run function gha:entity/block/gold_storage_crate/drop/5

execute unless score @s gha.number matches 6 run function gha:entity/block/gold_storage_crate/drop/6

execute unless score @s gha.number matches 7 run function gha:entity/block/gold_storage_crate/drop/7

execute unless score @s gha.number matches 8 run function gha:entity/block/gold_storage_crate/drop/8

execute unless score @s gha.number matches 9 run function gha:entity/block/gold_storage_crate/drop/9

execute unless score @s gha.number matches 10 run function gha:entity/block/gold_storage_crate/drop/10

execute unless score @s gha.number matches 11 run function gha:entity/block/gold_storage_crate/drop/11

execute unless score @s gha.number matches 12 run function gha:entity/block/gold_storage_crate/drop/12

execute unless score @s gha.number matches 13 run function gha:entity/block/gold_storage_crate/drop/13

execute unless score @s gha.number matches 14 run function gha:entity/block/gold_storage_crate/drop/14

execute unless score @s gha.number matches 15 run function gha:entity/block/gold_storage_crate/drop/15

kill @e[ distance=..5, nbt={Item:{components:{"minecraft:custom_data":{r:1b}}}},type=item]
kill