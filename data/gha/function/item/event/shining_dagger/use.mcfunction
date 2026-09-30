advancement revoke @s only gha.generated:use/shining_dagger
execute unless score @s gha.cooldown matches 4.. run return fail
scoreboard players reset @s gha.cooldown

execute if predicate gha:sneaking run return run function gha:item/event/shining_dagger/sneaking
function gha:item/event/shining_dagger/not_sneaking