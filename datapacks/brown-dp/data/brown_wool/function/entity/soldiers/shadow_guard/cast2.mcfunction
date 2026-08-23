# 執行者：雷影巡衛
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.shadow_guard.ready 0
execute store result score @s brown_wool.shadow_guard.random run random value 1..2

# cd
scoreboard players set @s brown_wool.shadow_guard.cd 100

tag @s add brown_wool.shadow_guard.cast2

particle dust{color:[0, 0, 0],scale:4.0} ~ ~ ~ 3.0 2 3.0 0.1 500




