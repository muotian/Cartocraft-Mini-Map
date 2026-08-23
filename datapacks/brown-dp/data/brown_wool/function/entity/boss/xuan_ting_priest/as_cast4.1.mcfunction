
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.cast4 1

rotate @s facing entity @p
particle dust{color:[0, 0.12, 1],scale:1.0} ^ ^ ^ 0.2 0.2 0.2 0.1 3 force @a[distance=..50]

execute if score @s brown_wool.xuan_ting_priest.cast4 matches 40.. run tp @s ^ ^ ^0.4


execute if entity @a[distance=..0.7] run tag @s add brown_wool.xuan_ting_priest.cast4.3
execute unless block ^ ^ ^0.6 air run tag @s add brown_wool.xuan_ting_priest.cast4.3


execute if entity @s[tag=brown_wool.xuan_ting_priest.cast4.3] as @a[distance=..1.7,tag=brown_wool.xuan_ting_priest.player] run damage @s 14 brown_wool:explosion
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast4.3] run particle explosion ~ ~ ~ 0.2 0.2 0.2 0.1 5
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast4.3] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.cast4.3] run kill @s

execute if score @s brown_wool.xuan_ting_priest.cast4 matches 300 run kill @s




