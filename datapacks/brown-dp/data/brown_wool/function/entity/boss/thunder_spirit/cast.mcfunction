
# 執行位置：同上

# cast: 施放技能



execute unless score @s brown_wool.thunder_spirit.random matches 1.. store result score @s brown_wool.thunder_spirit.random run random value 1..3



execute if score @s brown_wool.thunder_spirit.random matches 1 unless score @s brown_wool.thunder_spirit.cast matches 1.. run scoreboard players set @s brown_wool.thunder_spirit.cast 42
execute if score @s brown_wool.thunder_spirit.random matches 2 unless score @s brown_wool.thunder_spirit.cast matches 1.. run scoreboard players set @s brown_wool.thunder_spirit.cast 42
execute if score @s brown_wool.thunder_spirit.random matches 3 unless score @s brown_wool.thunder_spirit.cast matches 1.. run scoreboard players set @s brown_wool.thunder_spirit.cast 42

execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 40 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 35 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 30 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 25 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 20 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 15 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 10 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s
execute if score @s brown_wool.thunder_spirit.random matches 1.. if score @s brown_wool.thunder_spirit.cast matches 5 as @a[tag=brown_wool.thunder_spirit.player] at @s run playsound entity.experience_orb.pickup player @s

# 記分板
execute if score @s brown_wool.thunder_spirit.random matches 1 if score @s brown_wool.thunder_spirit.cast matches 2..42 run particle dust{color:[1, 0.6, 0.99],scale:1.0} ^ ^1 ^ 1 1 1 0.1 60 force @a[distance=..50]
execute if score @s brown_wool.thunder_spirit.random matches 1 if score @s brown_wool.thunder_spirit.cast matches 2 at @r[tag=brown_wool.thunder_spirit.player] run summon minecraft:block_display ~ ~-0.5 ~ {Tags:["brown_wool.thunder_spirit.cast1.1","brown_wool.thunder_spirit.cast1.0"],block_state: {Name: "minecraft:jigsaw", Properties: {orientation: "north_up"}}, transformation: {left_rotation: [1.0f, 0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0.5f, 0.5f]},Glowing:1b}


execute if score @s brown_wool.thunder_spirit.random matches 2 if score @s brown_wool.thunder_spirit.cast matches 2..42 run particle dust{color:[1, 0.6, 0.99],scale:1.0} ^ ^1 ^ 1 1 1 0.1 60 force @a[distance=..50]
execute if score @s brown_wool.thunder_spirit.random matches 2 if score @s brown_wool.thunder_spirit.cast matches 2 at @r[tag=brown_wool.thunder_spirit.player] run summon minecraft:block_display ~ ~ ~ {Tags:["brown_wool.thunder_spirit.cast2.1","brown_wool.thunder_spirit.cast2.0"]}

execute if score @s brown_wool.thunder_spirit.random matches 3 if score @s brown_wool.thunder_spirit.cast matches 2..42 run particle dust{color:[1, 0.6, 0.99],scale:1.0} ^ ^1 ^ 1 1 1 0.1 60 force @a[distance=..50]
execute if score @s brown_wool.thunder_spirit.random matches 3 if score @s brown_wool.thunder_spirit.cast matches 2 at @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] run summon minecraft:block_display ~0.5 ~-0.5 ~-23.5 {Tags:["brown_wool.thunder_spirit.cast3.0","brown_wool.thunder_spirit.cast3.1"],Glowing:1b,block_state: {Name: "minecraft:purple_glazed_terracotta", Properties: {facing: "north"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0f, -0.5f]},Rotation:[270,0]}
execute if score @s brown_wool.thunder_spirit.random matches 3 if score @s brown_wool.thunder_spirit.cast matches 2 at @e[type=marker, tag=brown_wool.thunder_spirit.terrain ,limit=1] run summon minecraft:block_display ~-0.5 ~-0.5 ~-23.5 {Tags:["brown_wool.thunder_spirit.cast3.0","brown_wool.thunder_spirit.cast3.2"],Glowing:1b,block_state: {Name: "minecraft:purple_glazed_terracotta", Properties: {facing: "north"}}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, 0f, -0.5f]},Rotation:[90,0]}



execute if score @s brown_wool.thunder_spirit.cast matches 1.. run scoreboard players remove @s brown_wool.thunder_spirit.cast 1
execute if score @s brown_wool.thunder_spirit.cast matches 1 run scoreboard players reset @s brown_wool.thunder_spirit.random
execute if score @s brown_wool.thunder_spirit.cast matches 1 store result score @s brown_wool.thunder_spirit.cd run random value 280..360
execute if score @s brown_wool.thunder_spirit.cast matches 1 run tag @s remove brown_wool.thunder_spirit.cast
execute if score @s brown_wool.thunder_spirit.cast matches 1 run scoreboard players reset @s brown_wool.thunder_spirit.cast









