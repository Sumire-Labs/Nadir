execute if entity @n[distance=0..,tag=gha.boss.algheti,type=slime] run return fail
summon slime ~ ~ ~ {Tags:["gha.entity", "gha.boss.algheti"], data:{g:"mob/algheti"}, attributes:[{id:"scale", base:2}, {id:"max_health", base:1024}], active_effects:[{id:"invisibility", duration:-1, show_particles:0b}], Health:1024, Invulnerable:1b, NoAI:1b, Silent:1b, DeathLootTable:"gha:entities/algheti"}
function aj:algheti/summon {args:{}}
execute as @n[tag=aj.algheti.root,distance=..100,type=item_display] run function aj:algheti/animations/rotate/play