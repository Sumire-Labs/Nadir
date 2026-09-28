execute store result storage gha:temp temp.projectile.x float 0.005 run random value -100..100
execute store result storage gha:temp temp.projectile.y float 0.005 run random value -100..100
function gha:entity/particle/terra_blade/move with storage gha:temp temp.projectile