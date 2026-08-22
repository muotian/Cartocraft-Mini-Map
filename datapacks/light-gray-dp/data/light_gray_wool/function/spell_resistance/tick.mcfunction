# 執行者：無
# 執行位置：世界重生點

# 讓玩家執行玩家相關的效果
execute as @a[scores={light_gray_wool.use_spell_resistance=1..}] at @s if items entity @s weapon.* *[custom_data~{spell_resistance:1b}] run function light_gray_wool:spell_resistance/as_player

execute as @a at @s if items entity @s weapon.mainhand *[custom_data~{spell_resistance:1b}] run title @s actionbar {"translate":"name.light_gray_wool.spell_power", "extra":[{"text":": "}, {"score":{"name":"@s","objective":"light_gray_wool_power"}}]}

# 重置記分板
scoreboard players reset @a light_gray_wool.use_spell_resistance
