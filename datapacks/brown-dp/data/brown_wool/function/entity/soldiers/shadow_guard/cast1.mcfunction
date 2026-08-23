# 執行者：雷影巡衛
# 執行位置：同上

# cast: 施放技能

# 重置記分板
scoreboard players set @s brown_wool.shadow_guard.ready 0
execute store result score @s brown_wool.shadow_guard.random run random value 1..2

# cd
scoreboard players set @s brown_wool.shadow_guard.cd 100

execute store result score @s brown_wool.shadow_guard.cast1_random run random value 1..20

execute if score @s brown_wool.shadow_guard.cast1_random matches 1 run tag @s add brown_wool.shadow_guard.cast1.1
execute if score @s brown_wool.shadow_guard.cast1_random matches 2 run tag @s add brown_wool.shadow_guard.cast1.2
execute if score @s brown_wool.shadow_guard.cast1_random matches 3 run tag @s add brown_wool.shadow_guard.cast1.3
execute if score @s brown_wool.shadow_guard.cast1_random matches 4 run tag @s add brown_wool.shadow_guard.cast1.4
execute if score @s brown_wool.shadow_guard.cast1_random matches 5 run tag @s add brown_wool.shadow_guard.cast1.5
execute if score @s brown_wool.shadow_guard.cast1_random matches 6 run tag @s add brown_wool.shadow_guard.cast1.6
execute if score @s brown_wool.shadow_guard.cast1_random matches 7 run tag @s add brown_wool.shadow_guard.cast1.7
execute if score @s brown_wool.shadow_guard.cast1_random matches 8 run tag @s add brown_wool.shadow_guard.cast1.8
execute if score @s brown_wool.shadow_guard.cast1_random matches 9 run tag @s add brown_wool.shadow_guard.cast1.9
execute if score @s brown_wool.shadow_guard.cast1_random matches 10 run tag @s add brown_wool.shadow_guard.cast1.10
execute if score @s brown_wool.shadow_guard.cast1_random matches 11 run tag @s add brown_wool.shadow_guard.cast1.11
execute if score @s brown_wool.shadow_guard.cast1_random matches 12 run tag @s add brown_wool.shadow_guard.cast1.12
execute if score @s brown_wool.shadow_guard.cast1_random matches 13 run tag @s add brown_wool.shadow_guard.cast1.13
execute if score @s brown_wool.shadow_guard.cast1_random matches 14 run tag @s add brown_wool.shadow_guard.cast1.14
execute if score @s brown_wool.shadow_guard.cast1_random matches 15 run tag @s add brown_wool.shadow_guard.cast1.15
execute if score @s brown_wool.shadow_guard.cast1_random matches 16 run tag @s add brown_wool.shadow_guard.cast1.16
execute if score @s brown_wool.shadow_guard.cast1_random matches 17 run tag @s add brown_wool.shadow_guard.cast1.17
execute if score @s brown_wool.shadow_guard.cast1_random matches 18 run tag @s add brown_wool.shadow_guard.cast1.18
execute if score @s brown_wool.shadow_guard.cast1_random matches 19 run tag @s add brown_wool.shadow_guard.cast1.19
execute if score @s brown_wool.shadow_guard.cast1_random matches 20 run tag @s add brown_wool.shadow_guard.cast1.20




execute if score @s brown_wool.shadow_guard.cast1_random matches 1 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.1"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 2 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.2"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 3 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.3"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 4 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.4"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 5 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.5"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 6 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.6"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 7 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.7"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 8 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.8"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 9 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.9"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 10 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.10"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 11 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.11"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 12 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.12"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 13 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.13"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 14 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.14"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 15 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.15"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 16 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.16"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 17 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.17"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 18 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.18"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 19 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.19"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
execute if score @s brown_wool.shadow_guard.cast1_random matches 20 run summon minecraft:block_display ~ ~3 ~ {Tags:["brown_wool.shadow_guard.cast1.0","brown_wool.shadow_guard.cast1.20"],block_state: {Name: "minecraft:black_concrete"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}




