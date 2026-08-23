# 執行者：岩雷工兵
# 執行位置：同上

# 8格内有人增加計時器分數
execute unless score @s brown_wool.mine_engineers.time matches 0.. store result score @s brown_wool.mine_engineers.time run random value 20..60
execute if entity @p[distance=..8] unless score @s brown_wool.mine_engineers.cd matches 1.. run scoreboard players add @s brown_wool.mine_engineers.time 1

# 隨機技能
execute unless score @s brown_wool.mine_engineers.random matches 1.. store result score @s brown_wool.mine_engineers.random run random value 1..2


# 如果分數到的，進入預備狀態
execute if score @s brown_wool.mine_engineers.time matches 120.. run scoreboard players set @s brown_wool.mine_engineers.ready 1

# 預備狀態增加計時器分數
execute if score @s brown_wool.mine_engineers.ready matches 1.. run scoreboard players add @s brown_wool.mine_engineers.ready 1

# 預備狀態特效
execute if score @s brown_wool.mine_engineers.ready matches 1..10 run particle dust{color:[0.96, 0.82, 0.14],scale:1.0} ~ ~ ~ 0.4 0.4 0.4 0.1 10
execute if score @s brown_wool.mine_engineers.ready matches 10..20 run particle dust{color:[0.96, 0.82, 0.14],scale:1.0} ~ ~ ~ 0.3 0.3 0.3 0.1 15
execute if score @s brown_wool.mine_engineers.ready matches 20..30 run particle dust{color:[0.96, 0.82, 0.14],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0.1 15
execute if score @s brown_wool.mine_engineers.ready matches 30..40 run particle dust{color:[0.96, 0.82, 0.14],scale:1.0} ~ ~ ~ 0.1 0.1 0.1 0.1 15


execute if score @s brown_wool.mine_engineers.ready matches 1..10 run particle dust{color:[0.96, 0.58, 0.14],scale:1.0} ~ ~ ~ 0.4 0.4 0.4 0.1 10
execute if score @s brown_wool.mine_engineers.ready matches 10..20 run particle dust{color:[0.96, 0.58, 0.14],scale:1.0} ~ ~ ~ 0.3 0.3 0.3 0.1 15
execute if score @s brown_wool.mine_engineers.ready matches 20..30 run particle dust{color:[0.96, 0.58, 0.14],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0.1 15
execute if score @s brown_wool.mine_engineers.ready matches 30..40 run particle dust{color:[0.96, 0.58, 0.14],scale:1.0} ~ ~ ~ 0.1 0.1 0.1 0.1 15

# 如果預備狀態分數到施放技能1
execute if score @s brown_wool.mine_engineers.random matches 1 if score @s brown_wool.mine_engineers.ready matches 40.. run function brown_wool:entity/soldiers/mine_engineers/cast1

# 如果預備狀態分數到施放技能2
execute if score @s brown_wool.mine_engineers.random matches 2 if score @s brown_wool.mine_engineers.ready matches 40.. run function brown_wool:entity/soldiers/mine_engineers/cast2


# 重置記分板
scoreboard players set @s[scores={brown_wool.mine_engineers.time=120..}] brown_wool.mine_engineers.time 0

# cd减少
execute if score @s brown_wool.mine_engineers.cd matches 1.. run scoreboard players remove @s brown_wool.mine_engineers.cd 1

