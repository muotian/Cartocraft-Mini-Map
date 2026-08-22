# 執行者：手持武器的玩家
# 執行位置：同上

# 粒子效果
particle dust{scale:1, color:[34, 27, 51]} ~ ~ ~ 0.2 0.5 0.2 1 5 force

# 藥水效果
effect give @s strength 1 0 true

#持劍時間
scoreboard players add @s light_gray_wool_temp_sword 1

title @s actionbar {"translate":"name.light_gray_wool.spell_hold", "extra":[{"text":": "}, {"score":{"name":"@s","objective":"light_gray_wool_temp_sword"}}]}