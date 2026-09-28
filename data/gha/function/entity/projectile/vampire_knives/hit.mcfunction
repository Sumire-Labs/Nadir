summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/vampire_knives/heal"}}
execute as @n[type=marker, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/vampire_knives/projectile
return 1