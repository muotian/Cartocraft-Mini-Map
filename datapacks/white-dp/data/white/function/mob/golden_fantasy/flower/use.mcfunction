
execute align y run summon minecraft:block_display ~ ~ ~ {Tags:[white.mob.golden_fantasy.flower,"summon"],block_state: {Name: "minecraft:wildflowers", Properties: {facing: "north", flower_amount: "4"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.4f, -0.5f]}}

execute store result storage white:temp flower.x float 0.1 run random value -4..4
execute store result storage white:temp flower.z float 0.1 run random value -4..4
execute store result storage white:temp flower.yaw float 0.1 run random value 0..3600
execute as @e[tag=summon,type=block_display,limit=1] at @s run function white:mob/golden_fantasy/flower/random_tp with storage white:temp flower
data merge entity @e[tag=summon,type=block_display,limit=1] {teleport_duration: 4}

data remove storage white:temp flower
tag @e[tag=summon,type=block_display,limit=1] remove summon