# 執行者：雷紋石傀
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunderstone_golem.ready 0
execute store result score @s brown_wool.thunderstone_golem.random run random value 1..2

# cd
scoreboard players set @s brown_wool.thunderstone_golem.cd 120

# 召喚
execute rotated ~ 0 run summon block_display ^ ^ ^0.5 {Tags:["brown_wool.thunderstone_golem.cast2","brown_wool.thunderstone_golem.cast2.2"]}
execute as @n[tag=brown_wool.thunderstone_golem.cast2.2] run rotate @s facing entity @p
execute as @n[tag=brown_wool.thunderstone_golem.cast2.2] at @s rotated ~ 0 run summon block_display ^ ^ ^-0.5 {block_state: {Name:dirt}, Tags:["brown_wool.thunderstone_golem.cast2"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.125f, 1.125f, 1.125f], translation: [-0.5625f, -0.5625f, -0.5625f]},view_range:10}
execute at @s as @a[distance=..8] run playsound entity.breeze.jump master @s


