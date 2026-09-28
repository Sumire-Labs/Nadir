execute unless block ~ ~ ~ barrel[facing=up] run return run function gha:entity/block/diamond_storage_crate/break
execute if block ~ ~ ~ barrel[open=true] run function gha:entity/block/diamond_storage_crate/open
kill @e[nbt={Item:{components:{"minecraft:custom_data":{r:1b}}}},distance=..20,type=item]