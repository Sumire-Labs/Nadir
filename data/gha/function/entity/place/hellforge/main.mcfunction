data modify storage gha:temp temp.place.x set from entity @s block_pos[0]
data modify storage gha:temp temp.place.y set from entity @s block_pos[1]
data modify storage gha:temp temp.place.z set from entity @s block_pos[2]
function gha:entity/place/hellforge/get_pos with storage gha:temp temp.place
kill