# 執行者：無
# 執行位置：世界重生點

# 讓岩雷工兵執行相關效果
execute as @e[type=husk, tag=brown_wool.mine_engineers] at @s run function brown_wool:entity/soldiers/mine_engineers/as_monster

#讓技能1法球執行相關效果
execute as @e[type=block_display, tag=brown_wool.mine_engineers.cast1] at @s run function brown_wool:entity/soldiers/mine_engineers/as_cast1

#讓岩雷工兵技能2執行相關效果
execute as @e[type=block_display, tag=brown_wool.mine_engineers.cast2.0] at @s run function brown_wool:entity/soldiers/mine_engineers/as_cast2
