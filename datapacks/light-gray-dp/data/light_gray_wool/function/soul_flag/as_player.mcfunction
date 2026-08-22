# 執行者：手持武器的玩家
# 執行位置：同上

# 粒子效果
particle soul ~ ~ ~ 1.5 0.1 1.5 1 10 force

# 藥水效果
execute at @s as @e[distance=..5] run effect give @s minecraft:slowness 1 5 true 

# 5格內不能移動