# 執行者：雷紋衛士
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunder_guardian.ready 0

# cd
scoreboard players set @s brown_wool.thunder_guardian.cd 160

# 召喚法球
summon block_display ^ ^3 ^ {block_state:{Name:amethyst_block},Tags:["brown_wool.thunder_guardian.cast1"],transformation:[1.0000f,0.0000f,0.0000f,-0.5000f,0.0000f,0.0000f,-1.0000f,0.5000f,-0.0000f,1.0000f,-0.0000f,-0.5000f,0.0000f,0.0000f,0.0000f,1.0000f],view_range:10}
execute at @s as @a[distance=..8] run playsound entity.breeze.jump master @s

