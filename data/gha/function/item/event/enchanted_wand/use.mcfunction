advancement revoke @s only gha:use/enchanted_wand
scoreboard players reset @s gha.cooldown

playsound entity.arrow.shoot player @a ~ ~ ~ 0.35 1.5 0
playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 2 0

execute if predicate gha:chance/25 run return run function gha:item/event/enchanted_wand/pink
function gha:item/event/enchanted_wand/blue