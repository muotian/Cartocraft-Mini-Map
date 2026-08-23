
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.cast1 1

execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

# 傷害
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] if score @s brown_wool.xuan_ting_priest.cast1 matches 20 run summon minecraft:block_display ~ ~5 ~ {Tags:["brown_wool.xuan_ting_priest.cast1.2","brown_wool.xuan_ting_priest.cast1.0"],block_state: {Name: "minecraft:amethyst_block"}, transformation: {left_rotation: [0.50000006f, -0.5f, 0.50000006f, 0.5f], right_rotation: [-0.38268346f, 0.0f, 0.0f, 0.9238795f], scale: [0.24999999f, 0.37500012f, 0.9999999f], translation: [0.2651652f, -1.0430818E-7f, -0.125f]},Glowing:1b}
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] if score @s brown_wool.xuan_ting_priest.cast1 matches 28.. as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] if score @s brown_wool.xuan_ting_priest.cast1 matches 30.. run particle explosion ~ ~ ~ 0.75 0.75 0.75 0.1 35
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] if score @s brown_wool.xuan_ting_priest.cast1 matches 30.. as @a[distance=..3.8] run damage @s 16 brown_wool:explosion

# 產生粒子效果
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] run particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^3.5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] run particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^-3.5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] run particle dust{color:[1, 1, 1],scale:2.0} ^-3.5 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] run particle dust{color:[1, 1, 1],scale:2.0} ^3.5 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.2] run particle dust{color:[0.93, 0, 1],scale:1.0} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

# 效果
rotate @s facing ^0.6 ^ ^2
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.2] run tp @s ~ ~-0.5 ~

# 重置記分板
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.1] if score @s brown_wool.xuan_ting_priest.cast1 matches 30.. run kill @s
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast1.2] if score @s brown_wool.xuan_ting_priest.cast1 matches 10.. run kill @s




