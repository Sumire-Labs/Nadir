data modify block 1000000 0 1000000 Items set from block ~ ~ ~ Items
data remove block 1000000 0 1000000 Items[{components:{"minecraft:custom_data":{r:1b}}}]
data remove block 1000000 0 1000000 Items[{Slot:3b}]
data remove block 1000000 0 1000000 Items[{Slot:5b}]
loot give @p[distance=..20] mine 1000000 0 1000000 debug_stick

item replace block ~ ~ ~ container.0 with command_block[custom_data={r:1b},item_model="air",tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.1 with command_block[custom_data={r:1b},item_model="air",tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.2 with command_block[custom_data={r:1b},item_model="air",tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.6 with command_block[custom_data={r:1b},item_model="air",tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.7 with command_block[custom_data={r:1b},item_model="air",tooltip_display={hide_tooltip:true}]
item replace block ~ ~ ~ container.8 with command_block[custom_data={r:1b},item_model="air",tooltip_display={hide_tooltip:true}]

function gha:entity/block/copper_storage_cabinet/update