execute if entity @s[gamemode=!creative] if predicate gha:chance/25 run clear @s #eggs 1

playsound entity.arrow.shoot player @a ~ ~ ~ 1 1 0

function gha:item/event/eggregator/shot_0