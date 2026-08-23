
# 執行位置：同上
#粒子

execute rotated ~ 0 positioned ^ ^ ^1 if entity @p[distance=..20] if block ~ ~ ~ air run function brown_wool:entity/boss/xuan_ting_priest/cast5.2

execute as @a[tag=brown_wool.xuan_ting_priest.player,distance=..1.75] run damage @s 16 brown_wool:lightning_bolt

