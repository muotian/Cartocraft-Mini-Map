# 執行者：技能1
# 執行位置：同上

# 產生粒子效果
particle dust{color:[0, 1, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 3
particle dust{color:[0.88, 0, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 3

# 發射
execute unless score @s brown_wool.thunder_guardian.cast1 matches 1.. run rotate @s facing entity @p
execute if block ^ ^ ^0.6 air run tp @s ^ ^ ^0.6

# 碰到人或方塊加tag
execute if entity @a[distance=..1] run tag @s add brown_wool.thunder_guardian.cast1.2
execute unless block ^ ^ ^0.6 air run tag @s add brown_wool.thunder_guardian.cast1.2

# 傷害
execute if entity @s[tag=brown_wool.thunder_guardian.cast1.2] as @a[distance=..2.5] run damage @s 14 brown_wool:explosion
execute if entity @s[tag=brown_wool.thunder_guardian.cast1.2] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 30
execute if entity @s[tag=brown_wool.thunder_guardian.cast1.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_guardian.cast1.2] run kill @s

# 消失
scoreboard players add @s brown_wool.thunder_guardian.cast1 1
execute if score @s brown_wool.thunder_guardian.cast1 matches 60 run kill @s

