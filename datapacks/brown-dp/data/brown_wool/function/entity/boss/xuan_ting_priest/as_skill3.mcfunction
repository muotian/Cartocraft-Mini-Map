# 執行者：技能3
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.skill3 1

# 子彈邊飛邊轉
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.1] run tp @s ^0.35 ^ ^0.05 ~3 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.2] run tp @s ^0.35 ^ ^0.05 ~2 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.3] run tp @s ^0.35 ^ ^0.06 ~4 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.4] run tp @s ^0.5 ^ ^0.05 ~3 ~
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.5] run tp @s ^0.6 ^ ^0.05 ~4 ~

# 子彈對其他生物造成生害
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.1] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run damage @s 14 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.2] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run damage @s 14 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.3] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run damage @s 10 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.4] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run damage @s 10 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.5] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run damage @s 10 brown_wool:lightning_bolt


execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.3] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run effect give @s slowness 1 255 true
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.4] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run effect give @s poison 1 9 true
execute if entity @s[tag=brown_wool.xuan_ting_priest.skill3.5] positioned ~-0.5 ~-0.5 ~-0.5 as @a[ dx=0, dy=0, dz=0 ,tag=brown_wool.xuan_ting_priest.player] run effect give @s wither 1 9 true

# 重置記分板
execute if score @s brown_wool.xuan_ting_priest.skill3 matches 200.. run kill @s


