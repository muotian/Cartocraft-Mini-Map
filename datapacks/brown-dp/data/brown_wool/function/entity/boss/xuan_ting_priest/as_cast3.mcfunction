# 執行者：技能3
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.cast3 1

# 子彈邊飛邊轉
tp @s ^0.35 ^ ^0.05 ~3 ~

# 子彈對其他生物造成生害
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run damage @s 16 brown_wool:lightning_bolt

# 重置記分板
execute if score @s brown_wool.xuan_ting_priest.cast3 matches 200.. run kill @s


