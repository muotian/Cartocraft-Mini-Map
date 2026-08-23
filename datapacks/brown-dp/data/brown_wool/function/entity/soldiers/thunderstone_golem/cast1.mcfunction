# 執行者：雷紋石傀
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.thunderstone_golem.ready 0
execute store result score @s brown_wool.thunderstone_golem.random run random value 1..2

# cd
scoreboard players set @s brown_wool.thunderstone_golem.cd 120

# 技能1
attribute @s knockback_resistance base set 1
data modify entity @s NoAI set value true
tag @s add brown_wool.thunderstone_golem.cast1

execute at @s as @a[distance=..6] run playsound entity.generic.explode player @s

