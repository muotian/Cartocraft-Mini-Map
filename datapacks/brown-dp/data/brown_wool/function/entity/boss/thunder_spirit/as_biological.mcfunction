
# 生物


execute store result score @s brown_wool.thunder_spirit.health2 run data get entity @s Health



execute if score @s brown_wool.thunder_spirit.health2 matches ..100 run summon minecraft:block_display ~ ~ ~ {Tags:["brown_wool.thunder_spirit.attack1","brown_wool.thunder_spirit.attack0"],block_state: {Name: "minecraft:purple_stained_glass"}, transformation: {left_rotation: [-0.3535534f, -0.3535534f, -0.14644663f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.75f, 0.75f, 0.75f], translation: [-0.26516503f, -0.53033006f, -0.26516503f]},Glowing:1b}

execute if score @s brown_wool.thunder_spirit.health2 matches ..100 run kill @s



