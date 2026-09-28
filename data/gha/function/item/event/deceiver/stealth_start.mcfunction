tag @s add gha.deceiver.stealth
scoreboard players set @s gha.weapon.deceiver 100
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 1 0
particle electric_spark ~ ~1 ~ 0.1 0 0.1 2 20 force
particle end_rod ~ ~1 ~ 0.1 0 0.1 0.2 10 force
attribute @s movement_speed modifier add gha:deceiver 1 add_multiplied_base
attribute @s jump_strength modifier add gha:deceiver 0.5 add_multiplied_base
attribute @s sneaking_speed modifier add gha:deceiver 10 add_value