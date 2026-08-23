
# 執行位置：同上

# 增加計時器分數
execute rotated ~ 0 positioned ^1 ^ ^1 if entity @p[distance=..30] if block ~ ~ ~ air run function brown_wool:entity/boss/thunder_shadow_guard/skill2.2

execute rotated ~ 0 positioned ^ ^1 ^ as @a[distance=..2 ,tag=brown_wool.thunder_shadow_guard.player] run damage @s 14 brown_wool:player_attack by @n[tag=brown_wool.thunder_shadow_guard]

particle dust{color:[0.38, 0, 0.52],scale:3.0} ^1 ^1.6 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^1 ^1.8 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^1 ^2 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^1 ^2.2 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^1 ^2.4 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^1 ^2.6 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^0.8 ^2.8 ^0.8 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^0.6 ^3 ^0.6 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^0.4 ^3.2 ^0.4 0 0 0 0.1 0 force @a[distance=..50]

particle dust{color:[0, 0, 0],scale:3.0} ^1 ^1.4 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^1 ^1.2 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^1 ^1 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^1 ^0.8 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^1 ^0.6 ^1 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^0.8 ^0.4 ^0.8 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0, 0, 0],scale:3.0} ^0.6 ^0.2 ^0.6 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[0.38, 0, 0.52],scale:3.0} ^0.4 ^0 ^0.4 0 0 0 0.1 0 force @a[distance=..50]


