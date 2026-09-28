execute rotated ~20 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~40 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~60 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~80 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~100 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~120 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~140 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~160 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~180 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~200 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~220 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~240 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~260 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~280 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~300 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~320 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~340 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force
execute rotated ~360 0 positioned ~ ~5 ~ run particle dust{color:[0.6, 0.8, 1.0],scale:1} ^ ^ ^1 0 0 0 0 0 force

data modify storage gha:temp temp.projectile.u set from entity @s data.u

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], billboard:"vertical", data:{g:"projectile/frigid_snow/icicle"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}}
execute store result storage gha:temp temp.projectile.x float 0.005 run random value -100..100
execute store result storage gha:temp temp.projectile.y float 0.005 run random value -100..100
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/frigid_snow/bolt/projectile with storage gha:temp temp.projectile

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], billboard:"vertical", data:{g:"projectile/frigid_snow/icicle"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}}
execute store result storage gha:temp temp.projectile.x float 0.005 run random value -100..100
execute store result storage gha:temp temp.projectile.y float 0.005 run random value -100..100
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/frigid_snow/bolt/projectile with storage gha:temp temp.projectile

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], billboard:"vertical", data:{g:"projectile/frigid_snow/icicle"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}}
execute store result storage gha:temp temp.projectile.x float 0.005 run random value -100..100
execute store result storage gha:temp temp.projectile.y float 0.005 run random value -100..100
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/frigid_snow/bolt/projectile with storage gha:temp temp.projectile

summon item_display ~ ~ ~ {Tags:["gha.entity", "gha.entity.init"], billboard:"vertical", data:{g:"projectile/frigid_snow/icicle"}, brightness:{block:15, sky:15}, item: {id:"command_block", components:{item_model:"air"}}, interpolation_duration: 1, transformation: {left_rotation: [0.0, 0.0, 0.0, 1.0], right_rotation: [0.0, 0.0, 0.0, 1.0], scale: [0.0, 0.0, 0.0], translation: [0.0, 0.0, 0.0]}}
execute store result storage gha:temp temp.projectile.x float 0.005 run random value -100..100
execute store result storage gha:temp temp.projectile.y float 0.005 run random value -100..100
execute as @n[type=item_display, tag=gha.entity.init, distance=..5] run function gha:entity/projectile/frigid_snow/bolt/projectile with storage gha:temp temp.projectile