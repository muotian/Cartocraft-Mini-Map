# 執行者：岩雷工兵
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.mine_engineers.ready 0

# cd
scoreboard players set @s brown_wool.mine_engineers.cd 60

execute store result score @s brown_wool.mine_engineers.random run random value 1..2


summon minecraft:block_display ^ ^1.6 ^0.5 {block_state: {Name: "minecraft:sand"},Tags:["brown_wool.mine_engineers.cast2.1","brown_wool.mine_engineers.cast2.0"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [-0.25f, -0.25f, -0.25f]},Glowing:1b}

