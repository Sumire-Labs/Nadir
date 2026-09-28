execute if entity @n[distance=..5, type=#gha:living] if function gha:entity/projectile/crimson_katana/detect run return 1

execute unless block ~ ~ ~ #gha:no_collision run return 1
particle dust{color:[0.9, 0.2, 0.2], scale:1} ~ ~ ~ 0 0 0 0 0 force

function gha:entity/projectile/crimson_katana/rotate with entity @s data