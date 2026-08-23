# 執行者：雙劍雷影衛
# 執行位置：同上
#粒子

execute rotated ~ 0 positioned ^ ^ ^1 if entity @p[distance=..20] if block ~ ~ ~ air run function brown_wool:entity/boss/thunder_shadow_guard/cast_particle2.1

particle dust{color:[1, 1, 1],scale:1.0} ^1 ^0.1 ^ 0 0 0 0.1 0 force @a[distance=..50]
particle dust{color:[1, 1, 1],scale:1.0} ^-1 ^0.1 ^ 0 0 0 0.1 0 force @a[distance=..50]

