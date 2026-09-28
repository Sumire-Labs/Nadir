execute store result storage gha:temp temp.projectile.x float 0.01 run random value -100..100
execute store result storage gha:temp temp.projectile.y float 0.01 run random value -100..100
function gha:item/event/_generic/spread/projectile/7 with storage gha:temp temp.projectile