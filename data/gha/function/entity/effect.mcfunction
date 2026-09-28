tag @s remove gha.entity.effect
execute if score @s gha.effect.frostburn matches 0.. run function gha:entity/effect/frostburn/main
execute if score @s gha.effect.venom matches 0.. run function gha:entity/effect/venom/main
execute if score @s gha.effect.deceiver matches 0.. run function gha:entity/effect/deceiver/main
execute if score @s gha.effect.stopped matches 0.. run function gha:entity/effect/stopped/main