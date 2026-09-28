scoreboard players add @s gha.entity.tick 1

scoreboard players operation $gha:temp.projectile gha.temp = @s gha.entity.tick
scoreboard players operation $gha:temp.projectile gha.temp %= $gha:const.10 gha.const
execute store result storage gha:temp temp.projectile.r float 36 run scoreboard players get @s gha.entity.tick
function gha:entity/slash/crimson_katana/area with storage gha:temp temp.projectile
particle dust{color:[0.8, 0.1, 0.1], scale:1} ~ ~ ~ 0.1 0 0.1 0 1 force
effect give @e[distance=..5, type=#gha:living_no_player] slowness 1 2 true
scoreboard players operation $gha:temp.projectile gha.temp = @s gha.entity.tick
scoreboard players operation $gha:temp.projectile gha.temp %= $gha:const.10 gha.const
execute if score $gha:temp.projectile gha.temp matches 1 run effect give @a[distance=..5] regeneration 1 2 true

function gha:entity/slash/crimson_katana/reduce with entity @s data
execute if score @s gha.entity.tick matches 1000 run kill