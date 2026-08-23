# 執行者：雷紋衛士
# 執行位置：同上

#7格内没有人變成遠程
execute unless entity @p[distance=..7] if items entity @s weapon.mainhand diamond_sword run item replace entity @s weapon.mainhand with bow[enchantments={power:3}]

#7格内有人變成近戰
execute if entity @p[distance=..7] if items entity @s weapon.mainhand bow run item replace entity @s weapon.mainhand with diamond_sword[enchantments={sharpness:4}]

# 15格内有人增加計時器分數
execute unless score @s brown_wool.thunder_guardian.time matches 0.. store result score @s brown_wool.thunder_guardian.time run random value 20..60
execute if entity @p[distance=..15] unless score @s brown_wool.thunder_guardian.cd matches 1.. run scoreboard players add @s brown_wool.thunder_guardian.time 1

# 如果分數到的，進入預備狀態
execute if score @s brown_wool.thunder_guardian.time matches 120.. run scoreboard players set @s brown_wool.thunder_guardian.ready 1

# 預備狀態增加計時器分數
execute if score @s brown_wool.thunder_guardian.ready matches 1.. run scoreboard players add @s brown_wool.thunder_guardian.ready 1

# 預備狀態特效
execute if score @s brown_wool.thunder_guardian.ready matches 1..10 run particle dust{color:[0, 0, 1],scale:1.0} ~ ~ ~ 0.8 0.8 0.8 0.1 10
execute if score @s brown_wool.thunder_guardian.ready matches 10..20 run particle dust{color:[0, 0, 1],scale:1.0} ~ ~ ~ 0.6 0.6 0.6 0.1 15
execute if score @s brown_wool.thunder_guardian.ready matches 20..30 run particle dust{color:[0, 0, 1],scale:1.0} ~ ~ ~ 0.4 0.4 0.4 0.1 15
execute if score @s brown_wool.thunder_guardian.ready matches 30..40 run particle dust{color:[0, 0, 1],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0.1 15


execute if score @s brown_wool.thunder_guardian.ready matches 1..10 run particle dust{color:[0.6, 0, 1],scale:1.0} ~ ~ ~ 0.8 0.8 0.8 0.1 10
execute if score @s brown_wool.thunder_guardian.ready matches 10..20 run particle dust{color:[0.6, 0, 1],scale:1.0} ~ ~ ~ 0.6 0.6 0.6 0.1 15
execute if score @s brown_wool.thunder_guardian.ready matches 20..30 run particle dust{color:[0.6, 0, 1],scale:1.0} ~ ~ ~ 0.4 0.4 0.4 0.1 15
execute if score @s brown_wool.thunder_guardian.ready matches 30..40 run particle dust{color:[0.6, 0, 1],scale:1.0} ~ ~ ~ 0.2 0.2 0.2 0.1 15


# 如果預備狀態分數到的，7格内没有人就施放技能1
execute unless entity @p[distance=..7] if score @s brown_wool.thunder_guardian.ready matches 40.. run function brown_wool:entity/soldiers/thunder_guardian/cast1

# 如果預備狀態分數到的，7格内有人就施放技能2
execute if entity @p[distance=..7] if score @s brown_wool.thunder_guardian.ready matches 40.. run function brown_wool:entity/soldiers/thunder_guardian/cast2


# 重置記分板
scoreboard players set @s[scores={brown_wool.thunder_guardian.time=120..}] brown_wool.thunder_guardian.time 0

# cd减少
execute if score @s brown_wool.thunder_guardian.cd matches 1.. run scoreboard players remove @s brown_wool.thunder_guardian.cd 1

