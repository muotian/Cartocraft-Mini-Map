# 執行者：無
# 執行位置：世界重生點

# 讓怪物執行相關效果
execute as @e[type=husk, tag=light_gray_wool.example_monster] at @s run function light_gray_wool:example_monster/as_monster

# 讓終界蟎執行相關效果
execute as @e[type=endermite, tag=light_gray_wool.endermite] at @s run function light_gray_wool:example_monster/as_endermite