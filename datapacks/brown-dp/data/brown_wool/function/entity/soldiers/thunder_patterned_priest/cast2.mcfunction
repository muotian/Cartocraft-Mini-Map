# 執行者：霆紋侍祭
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunder_patterned_priest.ready 0
execute store result score @s brown_wool.thunder_patterned_priest.random run random value 1..2

# cd
scoreboard players set @s brown_wool.thunder_patterned_priest.cd 160

# 技能2
execute at @s as @a[distance=..8] run playsound entity.breeze.jump player @s
execute rotated ~ 0 run summon minecraft:block_display ^ ^2.5 ^ {Tags:["brown_wool.thunder_patterned_priest.cast2.1","brown_wool.thunder_patterned_priest.cast2.0"],block_state: {Name: "minecraft:structure_block", Properties: {mode: "load"}}, transformation: {left_rotation: [0.0f, 0.0f, 2.6490953E-8f, 1.0f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [1.125f, 0.625f, 1.00000005E-4f], translation: [-0.79549515f, 3.7252903E-8f, -5.0000002E-5f]},Glowing:1b}



