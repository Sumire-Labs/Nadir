scoreboard players add @s gha.entity.tick 1

function gha:entity/projectile/vampire_knives/heal/rotate with entity @s data
execute at @s unless function gha:entity/projectile/vampire_knives/heal/move run return run kill

execute if score @s gha.entity.tick matches 10 at @s run kill