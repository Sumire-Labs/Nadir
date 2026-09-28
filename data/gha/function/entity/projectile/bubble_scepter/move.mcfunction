execute if function gha:entity/projectile/bubble_scepter/move_one run return fail
execute if score @s gha.entity.tick matches ..15 at @s if function gha:entity/projectile/bubble_scepter/move_one run return fail
execute if score @s gha.entity.tick matches ..12 at @s if function gha:entity/projectile/bubble_scepter/move_one run return fail
execute if score @s gha.entity.tick matches ..9 at @s if function gha:entity/projectile/bubble_scepter/move_one run return fail
execute if score @s gha.entity.tick matches ..6 at @s if function gha:entity/projectile/bubble_scepter/move_one run return fail
execute if score @s gha.entity.tick matches ..3 at @s if function gha:entity/projectile/bubble_scepter/move_one run return fail
particle dust{color:[0.5, 0.8, 1.0], scale:0.5} ~ ~ ~ 0 0 0 0 0 force
return 1