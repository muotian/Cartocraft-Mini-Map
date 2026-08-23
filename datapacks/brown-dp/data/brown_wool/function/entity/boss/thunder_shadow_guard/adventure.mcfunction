# 執行者：
# 執行位置：同上


execute if entity @e[type=marker ,tag=brown_wool.thunder_shadow_guard.terrain_2 ,distance=..30,limit=1] if entity @s[gamemode=survival] run gamemode adventure @s
execute unless entity @e[type=marker ,tag=brown_wool.thunder_shadow_guard.terrain_2 ,distance=..30,limit=1] run function brown_wool:entity/boss/thunder_shadow_guard/survival




