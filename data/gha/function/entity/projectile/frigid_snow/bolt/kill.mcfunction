particle block{block_state:"snow_block"} ~ ~ ~ 0.2 0.2 0.2 0 10 force
playsound block.glass.break player @a ~ ~ ~ 0.75 1.2 0

execute rotated ~ 0 positioned ^ ^ ^1.25 run function gha:entity/projectile/frigid_snow/bolt/summon
kill