particle block{block_state:"nether_bricks"} ~ ~ ~ 0.3 0.3 0.3 0 10 force
playsound block.decorated_pot.shatter player @a ~ ~ ~ 1 1 0
execute if predicate gha:chance/25 run function gha:item/give/nether_brick_mattock
kill