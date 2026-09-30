advancement revoke @s only gha.generated:use/shishenium_rapier
execute unless score @s gha.cooldown matches 40.. run return fail
execute if predicate gha:flying run return fail
scoreboard players reset @s gha.cooldown

effect give @s hunger 1 6 true
scoreboard players set @s gha.weapon.shishenium_rapier 10