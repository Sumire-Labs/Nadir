particle block{block_state:"terracotta"} ~ ~ ~ 0.3 0.3 0.3 0 10 force
playsound block.decorated_pot.shatter player @a ~ ~ ~ 1 1 0
execute if predicate gha:chance/25 run function gha.generated:item/give/brick_mattock
kill