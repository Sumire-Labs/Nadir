advancement revoke @s only gha.generated:use/lasore_gun
scoreboard players reset @s gha.cooldown

execute unless items entity @s weapon.offhand #gha:lasore_gun/all_ammo run return run playsound block.dispenser.fail player @s ~ ~ ~ 1 1.2 0

playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 0.5 2 0
playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 2 0
playsound minecraft:block.chain.place player @a ~ ~ ~ 0.2 0.5 0
playsound minecraft:block.lantern.place player @a ~ ~ ~ 1 0.5 0

function gha:item/event/lasore_gun/shot
execute if entity @s[gamemode=!creative] if predicate gha:chance/5 run item modify entity @s weapon.offhand gha:consume
execute as @n[tag=gha.entity.init,distance=..5,type=marker] run function gha:item/event/_generic/projectile