# 執行者：技能3
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.thunder_shadow_guard.cast3 1

execute rotated ~ 0 if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~


# 產生粒子效果
particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^-5 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^5 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^-5 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

execute if score @s brown_wool.thunder_shadow_guard.cast3 matches 35 run particle dust{color:[0, 0, 0],scale:4} ~ ~9 ~ 0.6 0.6 0.6 0.2 50

# 效果
rotate @s facing ^0.6 ^ ^5

# 重置記分板
execute if score @s brown_wool.thunder_shadow_guard.cast3 matches 35.. run kill @s


