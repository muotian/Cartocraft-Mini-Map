# 執行者：無
# 執行位置：世界重生點

# 讓雷紋衛士執行相關效果
execute as @e[type=skeleton, tag=brown_wool.thunder_guardian, tag=!brown_wool.thunder_guardian.cast2] at @s run function brown_wool:entity/soldiers/thunder_guardian/as_monster

#讓技能1法球執行相關效果
execute as @e[type=block_display, tag=brown_wool.thunder_guardian.cast1] at @s run function brown_wool:entity/soldiers/thunder_guardian/as_cast1

#讓雷紋衛士技能2執行相關效果
execute as @e[type=skeleton, tag=brown_wool.thunder_guardian.cast2] at @s run function brown_wool:entity/soldiers/thunder_guardian/as_cast2
