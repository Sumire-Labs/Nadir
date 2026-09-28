$execute unless data block ~ ~ ~ {Items:[$(c)]} run return fail
data modify storage gha:temp temp.block.i set from block ~ ~ ~ Items[{Slot:3b}]
data remove storage gha:temp temp.block.i.count
function gha:entity/block/copper_storage_cabinet/inventory_check with storage gha:temp temp.block