tag @s add gha.player

scoreboard players set @s gha.regen_rate 50
attribute @s armor modifier add gha:player -0.9999 add_multiplied_total
attribute @s armor_toughness modifier add gha:player -0.9999 add_multiplied_total
scoreboard players set @s gha.health 100
function gha.generated:item/give/enchanted_wand