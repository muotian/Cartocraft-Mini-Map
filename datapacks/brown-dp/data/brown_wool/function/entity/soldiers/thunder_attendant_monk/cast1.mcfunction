# 執行者：電芒侍僧
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunder_attendant_monk.ready 0
execute store result score @s brown_wool.thunder_attendant_monk.random run random value 1..2

# cd
scoreboard players set @s brown_wool.thunder_attendant_monk.cd 160

# 技能1
execute at @p run summon block_display ~ ~ ~ {Tags:["brown_wool.thunder_attendant_monk.cast1"]}



