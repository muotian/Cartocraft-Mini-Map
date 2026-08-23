
# 執行位置：同上

# cast: 施放技能

execute rotated ~ 0 positioned ^ ^ ^1 if entity @p[distance=..50] if block ~ ~ ~ air run function brown_wool:entity/boss/cangting_general/cast2.1

particle dust{color:[1, 1, 1],scale:2.5} ^1 ^ ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:2.5} ^-1 ^ ^ 0 0 0 0.1 0 force @a[distance=..50]


