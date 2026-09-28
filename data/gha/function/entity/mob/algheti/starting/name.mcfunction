execute if score @s gha.entity.tick matches 10 run playsound item.trident.throw hostile @a ~ ~ ~ 1 0.75 1
title @a subtitle {translate:"text.gha.boss.algheti.second",color:blue}

execute if score @s gha.entity.tick matches ..30 run return run title @a title ""

execute if score @s gha.entity.tick matches 31 run playsound item.trident.riptide_3 hostile @a ~ ~ ~ 1 0.5 1
title @a title {translate:"text.gha.boss.algheti", color:aqua, bold:true, underlined:true}