# 執行者：無
# 執行位置：世界重生點

# 讓雷紋石傀執行相關效果
execute as @e[type=husk, tag=brown_wool.thunderstone_golem] at @s run function brown_wool:entity/soldiers/thunderstone_golem/as_monster

#讓雷紋石傀技能1執行相關效果
execute as @e[type=husk, tag=brown_wool.thunderstone_golem.cast1] at @s run function brown_wool:entity/soldiers/thunderstone_golem/as_cast1
execute as @e[type=block_display, tag=brown_wool.thunderstone_golem.cast1.01] at @s run function brown_wool:entity/soldiers/thunderstone_golem/as_cast1.01

#讓雷紋石傀技能2執行相關效果
execute as @e[type=block_display, tag=brown_wool.thunderstone_golem.cast2] at @s run function brown_wool:entity/soldiers/thunderstone_golem/as_cast2
