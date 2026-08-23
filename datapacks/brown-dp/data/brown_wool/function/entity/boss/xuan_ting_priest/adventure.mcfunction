# 執行者：
# 執行位置：同上


execute if entity @e[type=marker ,tag=brown_wool.xuan_ting_priest.terrain_2 ,distance=..25,limit=1] if entity @s[gamemode=survival] run gamemode adventure @s
execute unless entity @e[type=marker ,tag=brown_wool.xuan_ting_priest.terrain_2 ,distance=..25,limit=1] run function brown_wool:entity/boss/xuan_ting_priest/survival




