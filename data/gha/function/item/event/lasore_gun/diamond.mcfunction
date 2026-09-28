summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], data:{g:"projectile/lasore_gun/diamond"}}
summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init.3"], data:{g:"projectile/lasore_gun/diamond"}}
summon marker ~ ~ ~ {Tags:["gha.entity", "gha.entity.init.4"], data:{g:"projectile/lasore_gun/diamond"}}

execute as @n[tag=gha.entity.init.3,distance=..5,type=marker] run function gha:item/event/lasore_gun/projectile_3
execute as @n[tag=gha.entity.init.4,distance=..5,type=marker] run function gha:item/event/lasore_gun/projectile_4