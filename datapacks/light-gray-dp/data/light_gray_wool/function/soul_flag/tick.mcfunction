# 執行者：無
# 執行位置：世界重生點

# 讓玩家執行玩家有關的效果
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{soul_flag:1b}] run function light_gray_wool:soul_flag/as_player

