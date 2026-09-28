summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/lasore_gun/lapis"}}
summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init.1"], data:{g:"projectile/lasore_gun/lapis"}}
summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init.2"], data:{g:"projectile/lasore_gun/lapis"}}

execute as @n[tag=gha.entity.init.1,distance=..5,type=marker] run function gha:item/event/_generic/left/5
execute as @n[tag=gha.entity.init.2,distance=..5,type=marker] run function gha:item/event/_generic/right/5