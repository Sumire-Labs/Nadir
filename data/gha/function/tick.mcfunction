# warn-off-file target-selector-no-dimension
execute as @a at @s run function gha:player/player
execute as @e[type=#gha:used_as_custom_entity,tag=gha.entity] at @s run function gha:entity/entity with entity @s data
execute as @e[type=#gha:living, tag=gha.entity.effect] at @s run function gha:entity/effect