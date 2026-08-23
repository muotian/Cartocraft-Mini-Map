# 執行者：岩雷工兵
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.mine_engineers.ready 0

# cd
scoreboard players set @s brown_wool.mine_engineers.cd 60

execute store result score @s brown_wool.mine_engineers.random run random value 1..2

# 召喚
summon minecraft:block_display ~ ~0.5 ~ {block_state: {Name: "minecraft:warped_hyphae", Properties: {axis: "y"}},Tags:["brown_wool.mine_engineers.cast1"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.6875f, 0.25f, 0.6875f], translation: [-0.34375f, -0.625f, -0.34375f]}}

execute at @s as @a[distance=..8] run playsound entity.breeze.jump master @s

