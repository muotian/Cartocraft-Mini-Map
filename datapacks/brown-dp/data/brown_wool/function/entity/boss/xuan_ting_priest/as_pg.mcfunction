
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.xuan_ting_priest.as_pg 1

execute if score @s brown_wool.xuan_ting_priest.as_pg matches 120.. run kill @s

execute if score @s brown_wool.xuan_ting_priest.as_pg matches 1..20 run rotate @s facing ^1 ^ ^5

execute if score @s brown_wool.xuan_ting_priest.as_pg matches 21 run rotate @s facing entity @p[tag=brown_wool.xuan_ting_priest.player]

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1] if score @s brown_wool.xuan_ting_priest.as_pg matches 25.. run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2] if score @s brown_wool.xuan_ting_priest.as_pg matches 25.. run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3] if score @s brown_wool.xuan_ting_priest.as_pg matches 25.. run tp @s ^ ^ ^0.35
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4] if score @s brown_wool.xuan_ting_priest.as_pg matches 25.. run tp @s ^ ^ ^1.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5] if score @s brown_wool.xuan_ting_priest.as_pg matches 25.. run tp @s ^ ^ ^0.7
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6] if score @s brown_wool.xuan_ting_priest.as_pg matches 25.. run tp @s ^ ^ ^0.55

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1] run particle dust{color:[0, 0.93, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 5 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2] run particle dust{color:[0.6, 0, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 5 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3] run particle dust{color:[0.33, 0, 0.6],scale:1.0} ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4] run particle dust{color:[0.48, 1, 0.94],scale:1.0} ^ ^ ^ 0.15 0.15 0.15 0.1 5 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5] run particle dust{color:[0.07, 0, 1],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 5 force @a[distance=..50]
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6] run particle dust{color:[1, 0.04, 0.04],scale:2.0} ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a[distance=..50]




execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1] if entity @a[distance=..1.2,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.pg1.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1] unless block ^ ^ ^0.7 air run tag @s add brown_wool.xuan_ting_priest.pg1.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2] if entity @a[distance=..1.2,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.pg2.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2] unless block ^ ^ ^0.7 air run tag @s add brown_wool.xuan_ting_priest.pg2.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3] if entity @a[distance=..2.4,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.pg3.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3] unless block ^ ^ ^0.35 air run tag @s add brown_wool.xuan_ting_priest.pg3.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4] if entity @a[distance=..0.7,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.pg4.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4] unless block ^ ^ ^1.2 air run tag @s add brown_wool.xuan_ting_priest.pg4.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5] if entity @a[distance=..1.2,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.pg5.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5] unless block ^ ^ ^0.7 air run tag @s add brown_wool.xuan_ting_priest.pg5.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6] if entity @a[distance=..2.4,tag=brown_wool.xuan_ting_priest.player] run tag @s add brown_wool.xuan_ting_priest.pg6.2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6] unless block ^ ^ ^0.55 air run tag @s add brown_wool.xuan_ting_priest.pg6.2


execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1.2] as @a[distance=..2.5,tag=brown_wool.xuan_ting_priest.player] run damage @s 14 brown_wool:explosion
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1.2] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg1.2] run kill @s

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2.2] as @a[distance=..2.5,tag=brown_wool.xuan_ting_priest.player] run damage @s 12 brown_wool:explosion
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2.2] as @a[distance=..2.5,tag=brown_wool.xuan_ting_priest.player] run effect give @s slowness 5 255 true
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2.2] run particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 5
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg2.2] run kill @s

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3.2] as @a[distance=..4.5,tag=brown_wool.xuan_ting_priest.player] run damage @s 20 brown_wool:explosion
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3.2] run particle explosion ~ ~ ~ 0.7 0.7 0.7 0.1 30
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg3.2] run kill @s

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4.2] as @a[distance=..1.5,tag=brown_wool.xuan_ting_priest.player] run damage @s 8 brown_wool:bypasses_cooldown by @e[type=stray, tag=brown_wool.xuan_ting_priest0,limit=1]
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4.2] run particle explosion ~ ~ ~ 0.15 0.15 0.15 0.1 3
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg4.2] run kill @s

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.2] as @a[distance=..2.5,tag=brown_wool.xuan_ting_priest.player] run damage @s 12 brown_wool:explosion
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.2] run particle explosion ~ ~ ~ 0.15 0.15 0.15 0.1 3
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.2] run summon block_display ~ ~ ~ {Tags:["brown_wool.xuan_ting_priest.pg5.3","brown_wool.xuan_ting_priest.pg0"]}
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.2] run kill @s
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.3] as @a[distance=..2.5,tag=brown_wool.xuan_ting_priest.player] run effect give @s wither 1 2 true
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg5.3] run particle dust{color:[0.07, 0, 1],scale:1.0} ~ ~ ~ 1 0.0 1 0.1 50

execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6.2] as @a[distance=..4.5,tag=brown_wool.xuan_ting_priest.player] run damage @s 20 brown_wool:explosion
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6.2] run particle explosion ~ ~ ~ 0.7 0.7 0.7 0.1 30
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6.2] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg6.2] run kill @s



