# 執行者：無
# 執行位置：世界重生點

# 讓玩家執行玩家相關的效果
execute as @a[scores={light_gray_wool.use_example_item=1..}] at @s if items entity @s weapon.* *[custom_data~{example_item:1b}] run function light_gray_wool:example_item/as_player

# 讓子彈執行子彈相關的效果
execute as @e[type=item_display, tag=light_gray_wool.bullet] at @s run function light_gray_wool:example_item/as_bullet

# 重置記分板
scoreboard players reset @a light_gray_wool.use_example_item