# 執行者：技能1
# 執行位置：同上

# 產生粒子效果
particle dust{color:[0, 1, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 3
particle dust{color:[0.88, 0, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 3

# 發射
execute unless score @s brown_wool.shadow_guard.cast1 matches 1.. run rotate @s facing entity @p
execute if block ^ ^ ^0.6 air run tp @s ^ ^ ^0.6

# 碰到人或方塊加tag
execute if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.00
execute unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.00
execute if entity @s[tag=brown_wool.shadow_guard.cast1.1] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.01
execute if entity @s[tag=brown_wool.shadow_guard.cast1.1] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.01
execute if entity @s[tag=brown_wool.shadow_guard.cast1.2] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.02
execute if entity @s[tag=brown_wool.shadow_guard.cast1.2] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.02
execute if entity @s[tag=brown_wool.shadow_guard.cast1.3] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.03
execute if entity @s[tag=brown_wool.shadow_guard.cast1.3] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.03
execute if entity @s[tag=brown_wool.shadow_guard.cast1.4] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.04
execute if entity @s[tag=brown_wool.shadow_guard.cast1.4] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.04
execute if entity @s[tag=brown_wool.shadow_guard.cast1.5] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.05
execute if entity @s[tag=brown_wool.shadow_guard.cast1.5] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.05
execute if entity @s[tag=brown_wool.shadow_guard.cast1.6] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.06
execute if entity @s[tag=brown_wool.shadow_guard.cast1.6] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.06
execute if entity @s[tag=brown_wool.shadow_guard.cast1.7] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.07
execute if entity @s[tag=brown_wool.shadow_guard.cast1.7] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.07
execute if entity @s[tag=brown_wool.shadow_guard.cast1.8] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.08
execute if entity @s[tag=brown_wool.shadow_guard.cast1.8] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.08
execute if entity @s[tag=brown_wool.shadow_guard.cast1.9] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.09
execute if entity @s[tag=brown_wool.shadow_guard.cast1.9] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.09
execute if entity @s[tag=brown_wool.shadow_guard.cast1.10] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.010
execute if entity @s[tag=brown_wool.shadow_guard.cast1.10] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.010
execute if entity @s[tag=brown_wool.shadow_guard.cast1.11] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.011
execute if entity @s[tag=brown_wool.shadow_guard.cast1.11] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.011
execute if entity @s[tag=brown_wool.shadow_guard.cast1.12] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.012
execute if entity @s[tag=brown_wool.shadow_guard.cast1.12] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.012
execute if entity @s[tag=brown_wool.shadow_guard.cast1.13] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.013
execute if entity @s[tag=brown_wool.shadow_guard.cast1.13] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.013
execute if entity @s[tag=brown_wool.shadow_guard.cast1.14] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.014
execute if entity @s[tag=brown_wool.shadow_guard.cast1.14] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.014
execute if entity @s[tag=brown_wool.shadow_guard.cast1.15] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.015
execute if entity @s[tag=brown_wool.shadow_guard.cast1.15] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.015
execute if entity @s[tag=brown_wool.shadow_guard.cast1.16] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.016
execute if entity @s[tag=brown_wool.shadow_guard.cast1.16] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.016
execute if entity @s[tag=brown_wool.shadow_guard.cast1.17] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.017
execute if entity @s[tag=brown_wool.shadow_guard.cast1.17] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.017
execute if entity @s[tag=brown_wool.shadow_guard.cast1.18] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.018
execute if entity @s[tag=brown_wool.shadow_guard.cast1.18] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.018
execute if entity @s[tag=brown_wool.shadow_guard.cast1.19] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.019
execute if entity @s[tag=brown_wool.shadow_guard.cast1.19] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.019
execute if entity @s[tag=brown_wool.shadow_guard.cast1.20] if entity @a[distance=..1] run tag @s add brown_wool.shadow_guard.cast1.020
execute if entity @s[tag=brown_wool.shadow_guard.cast1.20] unless block ^ ^ ^0.6 air run tag @s add brown_wool.shadow_guard.cast1.020


# 傷害
execute if entity @s[tag=brown_wool.shadow_guard.cast1.00] as @a[distance=..2.5] run effect give @s wither 5 1 false
execute if entity @s[tag=brown_wool.shadow_guard.cast1.00] as @a[distance=..2.5] run effect give @s blindness 5 0 false
execute if entity @s[tag=brown_wool.shadow_guard.cast1.00] run particle dust{color:[0, 0, 0],scale:4.0} ~ ~ ~ 1 2 1 0.1 200
execute if entity @s[tag=brown_wool.shadow_guard.cast1.00] as @a[distance=..8] run playsound entity.evoker.cast_spell player

execute if entity @s[tag=brown_wool.shadow_guard.cast1.01] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.1,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.02] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.2,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.03] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.3,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.04] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.4,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.05] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.5,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.06] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.6,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.07] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.7,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.08] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.8,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.09] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.9,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.010] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.10,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.011] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.11,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.012] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.12,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.013] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.13,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.014] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.14,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.015] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.15,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.016] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.16,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.017] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.17,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.018] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.18,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.019] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.19,limit=1] @s
execute if entity @s[tag=brown_wool.shadow_guard.cast1.020] run tp @e[type=wither_skeleton,tag=brown_wool.shadow_guard.cast1.20,limit=1] @s

execute if entity @s[tag=brown_wool.shadow_guard.cast1.00] run kill @s


# 消失
scoreboard players add @s brown_wool.shadow_guard.cast1 1
execute if score @s brown_wool.shadow_guard.cast1 matches 60 run kill @s

