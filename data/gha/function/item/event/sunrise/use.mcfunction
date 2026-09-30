advancement revoke @s only gha.generated:use/sunrise
execute unless score @s gha.cooldown matches 3.. run return fail
scoreboard players reset @s gha.cooldown

execute if predicate gha:sneaking run return run function gha:item/event/sunrise/sneaking
function gha:item/event/sunrise/not_sneaking