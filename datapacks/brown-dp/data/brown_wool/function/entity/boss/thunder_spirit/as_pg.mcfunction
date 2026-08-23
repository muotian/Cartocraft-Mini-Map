
# 執行位置：同上

# 增加計時器分數
scoreboard players add @s brown_wool.thunder_spirit.as_pg 1

execute if score @s brown_wool.thunder_spirit.as_pg matches 260.. run kill @s

execute if score @s brown_wool.thunder_spirit.as_pg matches 1..30 run rotate @s facing ^1 ^ ^5

execute if score @s brown_wool.thunder_spirit.as_pg matches 31 run rotate @s facing entity @p[tag=brown_wool.thunder_spirit.player]

execute if entity @s[tag=brown_wool.thunder_spirit.pg1] if score @s brown_wool.thunder_spirit.as_pg matches 35.. run tp @s ^ ^ ^0.4
execute if entity @s[tag=brown_wool.thunder_spirit.pg2] if score @s brown_wool.thunder_spirit.as_pg matches 35.. run tp @s ^ ^ ^0.4
execute if entity @s[tag=brown_wool.thunder_spirit.pg3] if score @s brown_wool.thunder_spirit.as_pg matches 35.. run tp @s ^ ^ ^0.35
execute if entity @s[tag=brown_wool.thunder_spirit.pg4] if score @s brown_wool.thunder_spirit.as_pg matches 35.. run tp @s ^ ^ ^0.8
execute if entity @s[tag=brown_wool.thunder_spirit.pg5] if score @s brown_wool.thunder_spirit.as_pg matches 35.. run tp @s ^ ^ ^0.4


execute if entity @s[tag=brown_wool.thunder_spirit.pg1] run particle dust{color:[0, 0.93, 1],scale:2.0} ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_spirit.pg2] run particle dust{color:[0.6, 0, 1],scale:2.0} ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_spirit.pg3] run particle dust{color:[0.33, 0, 0.6],scale:2.0} ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_spirit.pg4] run particle dust{color:[0.48, 1, 0.94],scale:1.0} ^ ^ ^ 0.3 0.3 0.3 0.1 5 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_spirit.pg5] run particle dust{color:[0.07, 0, 1],scale:2.0} ^ ^ ^ 0.5 0.5 0.5 0.1 10 force @a[distance=..50]


execute if entity @s[tag=brown_wool.thunder_spirit.pg1] if entity @a[distance=..2.4,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.pg1.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg1] unless block ^ ^ ^0.4 air run tag @s add brown_wool.thunder_spirit.pg1.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg2] if entity @a[distance=..2.4,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.pg2.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg2] unless block ^ ^ ^0.4 air run tag @s add brown_wool.thunder_spirit.pg2.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg3] if entity @a[distance=..3,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.pg3.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg3] unless block ^ ^ ^0.35 air run tag @s add brown_wool.thunder_spirit.pg3.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg4] if entity @a[distance=..0.7,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.pg4.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg4] unless block ^ ^ ^0.8 air run tag @s add brown_wool.thunder_spirit.pg4.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg5] if entity @a[distance=..1.2,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.pg5.2

execute if entity @s[tag=brown_wool.thunder_spirit.pg5] unless block ^ ^ ^0.4 air run tag @s add brown_wool.thunder_spirit.pg5.2
execute if entity @s[tag=brown_wool.thunder_spirit.pg6] if entity @a[distance=..2.4,tag=brown_wool.thunder_spirit.player] run tag @s add brown_wool.thunder_spirit.pg6.2



execute if entity @s[tag=brown_wool.thunder_spirit.pg1.2] as @a[distance=..4.5,tag=brown_wool.thunder_spirit.player] run damage @s 22 brown_wool:explosion
execute if entity @s[tag=brown_wool.thunder_spirit.pg1.2] run particle explosion ~ ~ ~ 0.7 0.7 0.7 0.1 25
execute if entity @s[tag=brown_wool.thunder_spirit.pg1.2] as @a[distance=..12] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_spirit.pg1.2] run kill @s

execute if entity @s[tag=brown_wool.thunder_spirit.pg2.2] as @a[distance=..4.5,tag=brown_wool.thunder_spirit.player] run damage @s 18 brown_wool:explosion
execute if entity @s[tag=brown_wool.thunder_spirit.pg2.2] as @a[distance=..4.5,tag=brown_wool.thunder_spirit.player] run effect give @s slowness 5 255 true
execute if entity @s[tag=brown_wool.thunder_spirit.pg2.2] run particle explosion ~ ~ ~ 0.7 0.7 0.7 0.1 25
execute if entity @s[tag=brown_wool.thunder_spirit.pg2.2] as @a[distance=..12] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_spirit.pg2.2] run kill @s

execute if entity @s[tag=brown_wool.thunder_spirit.pg3.2] as @a[distance=..5.5,tag=brown_wool.thunder_spirit.player] run damage @s 26 brown_wool:explosion
execute if entity @s[tag=brown_wool.thunder_spirit.pg3.2] run particle explosion ~ ~ ~ 0.9 0.9 0.9 0.1 50
execute if entity @s[tag=brown_wool.thunder_spirit.pg3.2] as @a[distance=..12] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_spirit.pg3.2] run kill @s

execute if entity @s[tag=brown_wool.thunder_spirit.pg4.2] as @a[distance=..2.5,tag=brown_wool.thunder_spirit.player] run damage @s 12 brown_wool:bypasses_cooldown by @e[type=allay, tag=brown_wool.thunder_spirit0,limit=1]
execute if entity @s[tag=brown_wool.thunder_spirit.pg4.2] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if entity @s[tag=brown_wool.thunder_spirit.pg4.2] as @a[distance=..12] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_spirit.pg4.2] run kill @s



execute if entity @s[tag=brown_wool.thunder_spirit.pg5.2] as @a[distance=..4.5,tag=brown_wool.thunder_spirit.player] run damage @s 16 brown_wool:explosion
execute if entity @s[tag=brown_wool.thunder_spirit.pg5.2] run particle explosion ~ ~ ~ 0.7 0.7 0.7 0.1 25
execute if entity @s[tag=brown_wool.thunder_spirit.pg5.2] run summon block_display ~ ~ ~ {Tags:["brown_wool.thunder_spirit.pg5.3","brown_wool.thunder_spirit.pg0"]}
execute if entity @s[tag=brown_wool.thunder_spirit.pg5.2] as @a[distance=..12] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_spirit.pg5.2] run kill @s

execute if entity @s[tag=brown_wool.thunder_spirit.pg5.3] as @a[distance=..4.5,tag=brown_wool.thunder_spirit.player] run effect give @s wither 1 3 true
execute if entity @s[tag=brown_wool.thunder_spirit.pg5.3] run particle dust{color:[0.07, 0, 1],scale:1.0} ~ ~ ~ 1.8 0.0 1.8 0.1 70





