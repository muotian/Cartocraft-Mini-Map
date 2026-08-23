
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.thunder_shadow_guard.cast5 1




# 產生粒子效果
particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^8 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^ ^ ^-8 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^8 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.0} ^-8 ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

execute if score @s brown_wool.thunder_shadow_guard.cast5 matches 47 run particle dust{color:[0, 0, 0],scale:4.0} ~ ~ ~ 4.3 2 4.3 0.1 700

# 效果
rotate @s facing ^1 ^ ^5

# 重置記分板
execute if score @s brown_wool.thunder_shadow_guard.cast5 matches 47.. run kill @s


