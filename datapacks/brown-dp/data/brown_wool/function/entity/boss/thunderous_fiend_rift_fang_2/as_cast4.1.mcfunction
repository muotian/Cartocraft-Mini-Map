# 執行者：技能4
# 執行位置：同上

# 增加計時器分數

scoreboard players add @s brown_wool.thunderous_fiend_rift_fang_2.cast4 1

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast4 matches 30.. run rotate @s ~1.17 ~
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast4 matches 30.. run tp @s ^ ^ ^0.3

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast4 matches 30.. rotated ~ 0 positioned ~ ~0.1 ~ run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/cast_particle4

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast4 matches 30.. at @s as @p[tag=brown_wool.thunderous_fiend_rift_fang.player,distance=..8.2] run damage @s 6 brown_wool:in_fire

execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast4 matches 30.. facing entity @p[tag=brown_wool.thunderous_fiend_rift_fang.player] feet run function brown_wool:entity/boss/thunderous_fiend_rift_fang_2/cast4.1

# 重置記分板
execute if score @s brown_wool.thunderous_fiend_rift_fang_2.cast4 matches 280.. run kill @s


