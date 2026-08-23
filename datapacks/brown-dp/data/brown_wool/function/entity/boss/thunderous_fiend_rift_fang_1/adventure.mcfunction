# 執行者：
# 執行位置：同上


execute if entity @n[type=marker ,tag=brown_wool.thunderous_fiend_rift_fang.terrain_2 ,distance=..40] if entity @s[gamemode=survival] run gamemode adventure @s
execute unless entity @n[type=marker ,tag=brown_wool.thunderous_fiend_rift_fang.terrain_2 ,distance=..40] run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/survival




