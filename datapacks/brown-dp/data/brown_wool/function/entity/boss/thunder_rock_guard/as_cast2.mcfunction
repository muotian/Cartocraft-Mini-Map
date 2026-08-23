
# 執行位置：同上

#增加計時器分數

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.2] unless score @s brown_wool.thunder_rock_guard.cast2.2 matches 1.. run rotate @s facing entity @r[tag=brown_wool.thunder_rock_guard.player]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.3] unless score @s brown_wool.thunder_rock_guard.cast2.2 matches 1.. run rotate @s facing entity @r[tag=brown_wool.thunder_rock_guard.player]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.4] unless score @s brown_wool.thunder_rock_guard.cast2.2 matches 1.. run rotate @s facing entity @r[tag=brown_wool.thunder_rock_guard.player]

scoreboard players add @s brown_wool.thunder_rock_guard.cast2.1 1
scoreboard players add @s brown_wool.thunder_rock_guard.cast2.2 1

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] run rotate @s facing ^0.1 ^ ^1

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.5] rotated ~ 0 if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.6] rotated ~ 0 if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.7] rotated ~ 0 if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.5] positioned ~-1 ~-0.5 ~-1 as @a[dx=1,dy=0,dz=1,tag=brown_wool.thunder_rock_guard.player] run damage @s 5 brown_wool:in_fire
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.6] positioned ~-1 ~-0.5 ~-1 as @a[dx=1,dy=0,dz=1,tag=brown_wool.thunder_rock_guard.player] run effect give @s slowness 1 2 true
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.7] positioned ~-1 ~-0.5 ~-1 as @a[dx=1,dy=0,dz=1,tag=brown_wool.thunder_rock_guard.player] run damage @s 3 brown_wool:lightning_bolt
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.7] positioned ~-1 ~-0.5 ~-1 as @a[dx=1,dy=0,dz=1,tag=brown_wool.thunder_rock_guard.player] run effect give @s slowness 1 0 true



# 產生粒子效果
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.2] run particle dust{color:[1, 0, 0],scale:2.2} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.3] run particle dust{color:[1, 1, 0],scale:2.2} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.4] run particle dust{color:[0.55, 0, 1],scale:2.2} ^ ^ ^ 0.0 0.0 0.0 0.1 0 force @a[distance=..50]

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.2] run tp @s ^ ^ ^0.5
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.3] run tp @s ^ ^ ^0.5
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.4] run tp @s ^ ^ ^0.5


execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.2] if entity @a[distance=..0.8] run tag @s add brown_wool.thunder_rock_guard.cast2.02
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.2] unless block ^ ^ ^0.5 air run tag @s add brown_wool.thunder_rock_guard.cast2.02

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.3] if entity @a[distance=..0.8] run tag @s add brown_wool.thunder_rock_guard.cast2.03
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.3] unless block ^ ^ ^0.5 air run tag @s add brown_wool.thunder_rock_guard.cast2.03

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.4] if entity @a[distance=..0.8] run tag @s add brown_wool.thunder_rock_guard.cast2.04
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.4] unless block ^ ^ ^0.5 air run tag @s add brown_wool.thunder_rock_guard.cast2.04

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.02] as @a[distance=..1.8] run damage @s 12 brown_wool:player_attack by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.02] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0.1 30
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.02] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.02] run summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:magma_block"},Tags:["brown_wool.thunder_rock_guard.cast2.5","brown_wool.thunder_rock_guard.cast2.0"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0625f, 2.0f], translation: [-1.0f, -0.03125f, -1.0f]}}
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.02] run kill @s

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.03] as @a[distance=..1.8] run damage @s 12 brown_wool:player_attack by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.03] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0.1 30
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.03] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.03] run summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:sand"},Tags:["brown_wool.thunder_rock_guard.cast2.6","brown_wool.thunder_rock_guard.cast2.0"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0625f, 2.0f], translation: [-1.0f, -0.03125f, -1.0f]}}
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.03] run kill @s

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.04] as @a[distance=..1.8] run damage @s 12 brown_wool:player_attack by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.04] run particle explosion ~ ~ ~ 0.3 0.3 0.3 0.1 30
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.04] as @a[distance=..8] run playsound entity.generic.explode player
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.04] run summon minecraft:block_display ~ ~ ~ {block_state: {Name: "minecraft:crying_obsidian"},Tags:["brown_wool.thunder_rock_guard.cast2.7","brown_wool.thunder_rock_guard.cast2.0"], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 0.0625f, 2.0f], translation: [-1.0f, -0.03125f, -1.0f]}}
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.04] run kill @s


execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2.1 matches 25 store result score @s brown_wool.thunder_rock_guard.cast2_random run random value 1..3


execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2_random matches 1 run summon block_display ^ ^ ^ {Tags:["brown_wool.thunder_rock_guard.cast2.2","brown_wool.thunder_rock_guard.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2_random matches 2 run summon block_display ^ ^ ^ {Tags:["brown_wool.thunder_rock_guard.cast2.3","brown_wool.thunder_rock_guard.cast2.0"]}
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2_random matches 3 run summon block_display ^ ^ ^ {Tags:["brown_wool.thunder_rock_guard.cast2.4","brown_wool.thunder_rock_guard.cast2.0"]}

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2.1 matches 25 run scoreboard players reset @s brown_wool.thunder_rock_guard.cast2.1

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2_random matches 1.. run scoreboard players reset @s brown_wool.thunder_rock_guard.cast2_random

# 消失
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.1] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 210 run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.2] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 100 run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.3] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 100 run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.4] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 100 run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.5] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 200 run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.6] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 200 run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast2.7] if score @s brown_wool.thunder_rock_guard.cast2.2 matches 200 run kill @s






