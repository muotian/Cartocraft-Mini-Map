# 執行者：
# 執行位置：同上


execute if entity @e[type=marker ,tag=brown_wool.cangting_general.terrain_2 ,distance=..35,limit=1] if entity @s[gamemode=survival] run gamemode adventure @s
execute unless entity @e[type=marker ,tag=brown_wool.cangting_general.terrain_2 ,distance=..35,limit=1] run function brown_wool:entity/boss/cangting_general/survival



