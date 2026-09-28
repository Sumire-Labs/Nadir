bossbar set gha:algheti visible false
tellraw @a {text:"========================\n", color:gray}
tellraw @a {translate:"text.gha.boss.algheti.defeat", color:yellow}
tellraw @a {text:"\n========================", color:gray}

execute as @n[tag=aj.algheti.root,distance=..100,type=item_display] run function aj:algheti/remove/this
kill