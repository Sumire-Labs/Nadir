scoreboard players add @s gha.heal 1
scoreboard players reset @s gha.regen_timer

# 再生効果
execute store result score $gha:temp.player gha.regen_rate run data get entity @s active_effects[{id:"minecraft:regeneration"}].amplifier 100
execute if data entity @s active_effects[{id:"minecraft:regeneration"}] run scoreboard players add $gha:temp.player gha.regen_rate 100

# デフォルト
scoreboard players add $gha:temp.player gha.regen_rate 5

# 最大HP
execute store result score $gha:temp.player gha.health.max run attribute @s max_health get
scoreboard players operation $gha:temp.player gha.regen_rate += $gha:temp.player gha.health.max

# 満腹度
execute if score @s gha.hunger matches 18.. run scoreboard players add $gha:temp.player gha.regen_rate 25

# 自然回復
scoreboard players set @s gha.regen_rate 2000
scoreboard players operation @s gha.regen_rate /= $gha:temp.player gha.regen_rate