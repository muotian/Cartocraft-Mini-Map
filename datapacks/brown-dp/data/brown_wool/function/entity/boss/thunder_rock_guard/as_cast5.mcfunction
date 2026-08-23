
# 增加計時器分數

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] unless score @s brown_wool.thunder_rock_guard.cast5_random matches 1.. store result score @s brown_wool.thunder_rock_guard.cast5_random run random value 1..2

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] if score @s brown_wool.thunder_rock_guard.cast5_random matches 2 unless score @s brown_wool.thunder_rock_guard.cast5 matches 1.. run rotate @s facing ~1 ~ ~

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

scoreboard players add @s brown_wool.thunder_rock_guard.cast5 1

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] if score @s brown_wool.thunder_rock_guard.cast5 matches 20 if score @s brown_wool.thunder_rock_guard.cast5_random matches 1 run summon minecraft:block_display ~ ~-1.9 ~ {Tags:["brown_wool.thunder_rock_guard.cast5.2","brown_wool.thunder_rock_guard.cast5.0"],block_state: {Name: "minecraft:sand"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 2.0f, 1.0f], translation: [-1.5f, 0f, -0.5f]},Glowing:1b}
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] if score @s brown_wool.thunder_rock_guard.cast5 matches 20 if score @s brown_wool.thunder_rock_guard.cast5_random matches 2 run summon minecraft:block_display ~ ~-1.9 ~ {Tags:["brown_wool.thunder_rock_guard.cast5.3","brown_wool.thunder_rock_guard.cast5.0"],block_state: {Name: "minecraft:sand"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0f, 2.0f, 1.0f], translation: [-1.5f, 0f, -0.5f]},Glowing:1b,Rotation:[90,0]}

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 1..20 run tp @s ^ ^0.1 ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 1..20 run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 1..20 as @a[distance=..6] run playsound block.grass.hit player

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 140..160 run tp @s ^ ^-0.1 ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 140..160 run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 140..160 as @a[distance=..6] run playsound block.grass.hit player

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 1..20 run tp @s ^ ^0.1 ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 1..20 run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 1..20 as @a[distance=..6] run playsound block.grass.hit player

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 140..160 run tp @s ^ ^-0.1 ^
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 140..160 run particle block{block_state: "minecraft:dirt"} ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a[distance=..50]
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 140..160 as @a[distance=..6] run playsound block.grass.hit player


execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] positioned ~-1.5 ~ ~-0.5 as @a[dx=2,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run effect give @s slowness 3 3 true

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] positioned ~-0.5 ~ ~-1.5 as @a[dx=0,dy=1,dz=2,tag=brown_wool.thunder_rock_guard.player] run effect give @s slowness 3 3 true

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] positioned ~-1.5 ~ ~-0.5 as @a[dx=2,dy=1,dz=0,tag=brown_wool.thunder_rock_guard.player] run damage @s 8 brown_wool:lightning_bolt by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] positioned ~-0.5 ~ ~-1.5 as @a[dx=0,dy=1,dz=2,tag=brown_wool.thunder_rock_guard.player] run damage @s 8 brown_wool:lightning_bolt by @e[tag=brown_wool.thunder_rock_guard,type=husk,limit=1]

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] positioned ~-1.5 ~ ~-0.5 as @e[dx=2,dy=1,dz=0,type=arrow] run kill @s

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] positioned ~-0.5 ~ ~-1.5 as @e[dx=0,dy=1,dz=2,type=arrow] run kill @s



# 重置記分板
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] if score @s brown_wool.thunder_rock_guard.cast5 matches 20.. run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.2] if score @s brown_wool.thunder_rock_guard.cast5 matches 160.. run kill @s
execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.3] if score @s brown_wool.thunder_rock_guard.cast5 matches 160.. run kill @s

execute if entity @s[tag=brown_wool.thunder_rock_guard.cast5.1] run function brown_wool:entity/boss/thunder_rock_guard/cast_particle5

