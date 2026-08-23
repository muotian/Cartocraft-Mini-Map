# 執行者：無
# 執行位置：世界重生點

# 讓雷影巡衛執行相關效果
execute as @e[type=wither_skeleton, tag=brown_wool.shadow_guard] at @s run function brown_wool:entity/soldiers/shadow_guard/as_monster
execute as @e[type=wither_skeleton, tag=brown_wool.shadow_guard.cast2] at @s run function brown_wool:entity/soldiers/shadow_guard/as_cast2

#讓技能1法球執行相關效果
execute as @e[type=block_display, tag=brown_wool.shadow_guard.cast1.0] at @s run function brown_wool:entity/soldiers/shadow_guard/as_cast1

