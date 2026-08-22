# 執行者：無
# 執行位置：世界重生點

# 讓玩家執行玩家有關的效果
execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{spell_temp_sword:1b}] run function light_gray_wool:spell_temp_sword/as_player

# 持劍時間影響
execute as @a[scores={light_gray_wool_temp_sword=500..}] run clear @s minecraft:iron_sword[custom_data={spell_temp_sword:1b}]
execute as @a[scores={light_gray_wool_temp_sword=500..}] run scoreboard players set @s light_gray_wool_temp_sword 0