function gha:entity/mob/algheti/pillar/move
function aj:algheti_pillar/animations/summon/play
function aj:algheti_pillar/animations/idle/play
execute at @s run summon husk ~ ~ ~ {Tags:["gha.entity", "gha.boss.algheti.pillar"], data:{g:"mob/algheti/pillar"}, attributes:[{id:"scale", base:5}, {id:"max_health", base:1024}], active_effects:[{id:"invisibility", duration:-1, show_particles:0b}], Health:50, NoAI:1b, Silent:1b, DeathLootTable:"gha:empty"}
