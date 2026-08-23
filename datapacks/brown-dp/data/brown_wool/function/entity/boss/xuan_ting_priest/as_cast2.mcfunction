
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.cast2 1


execute if score @s brown_wool.xuan_ting_priest.cast2 matches 35 run rotate @s facing entity @p[tag=brown_wool.xuan_ting_priest.player]


