# 執行者：玄霆祭司
# 執行位置：同上

# cast: 施放技能

# 重置記分板
execute unless score @s brown_wool.xuan_ting_priest.pg_random matches 1.. store result score @s brown_wool.xuan_ting_priest.pg_random run random value 1..5
execute unless score @s brown_wool.xuan_ting_priest.pg2 matches 1.. run scoreboard players set @s brown_wool.xuan_ting_priest.pg2 20


execute if score @s brown_wool.xuan_ting_priest.pg_random matches 1 if score @s brown_wool.xuan_ting_priest.pg2 matches 20 at @s run summon minecraft:block_display ~ ~3.5 ~ {Tags:["brown_wool.xuan_ting_priest.pg1","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:light_blue_concrete"}, transformation: {left_rotation: [0.14644663f, -0.35355344f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999999f], translation: [-0.14644653f, 5.9604645E-8f, -0.85355335f]},Glowing:1b}

execute if score @s brown_wool.xuan_ting_priest.pg_random matches 2 if score @s brown_wool.xuan_ting_priest.pg2 matches 20 at @s run summon minecraft:block_display ~ ~3.5 ~ {Tags:["brown_wool.xuan_ting_priest.pg2","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:purple_concrete"}, transformation: {left_rotation: [0.14644663f, -0.35355344f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999999f], translation: [-0.14644653f, 5.9604645E-8f, -0.85355335f]},Glowing:1b}

execute if score @s brown_wool.xuan_ting_priest.pg_random matches 3 if score @s brown_wool.xuan_ting_priest.pg2 matches 20 at @s run summon minecraft:block_display ~ ~4 ~ {Tags:["brown_wool.xuan_ting_priest.pg3","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:crying_obsidian"}, transformation: {left_rotation: [-0.14644669f, 0.35355344f, -0.35355344f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0000005f, 2.0f, 2.0000002f], translation: [-1.707106f, 7.9472855E-8f, 0.29289314f]},Glowing:1b}

execute if score @s brown_wool.xuan_ting_priest.pg_random matches 4 if score @s brown_wool.xuan_ting_priest.pg2 matches 20 at @s rotated ~ 0 run summon minecraft:block_display ^ ^3 ^ {Tags:["brown_wool.xuan_ting_priest.pg4","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:light_blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [-0.24999997f, -0.24999997f, -0.25f]},Glowing:1b}
execute if score @s brown_wool.xuan_ting_priest.pg_random matches 4 if score @s brown_wool.xuan_ting_priest.pg2 matches 17 at @s rotated ~ 0 run summon minecraft:block_display ^1.5 ^2 ^ {Tags:["brown_wool.xuan_ting_priest.pg4","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:light_blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [-0.24999997f, -0.24999997f, -0.25f]},Glowing:1b}
execute if score @s brown_wool.xuan_ting_priest.pg_random matches 4 if score @s brown_wool.xuan_ting_priest.pg2 matches 14 at @s rotated ~ 0 run summon minecraft:block_display ^-1.5 ^2 ^ {Tags:["brown_wool.xuan_ting_priest.pg4","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:light_blue_stained_glass"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f], translation: [-0.24999997f, -0.24999997f, -0.25f]},Glowing:1b}

execute if score @s brown_wool.xuan_ting_priest.pg_random matches 5 if score @s brown_wool.xuan_ting_priest.pg2 matches 20 at @s run summon minecraft:block_display ~ ~3.5 ~ {Tags:["brown_wool.xuan_ting_priest.pg5","brown_wool.xuan_ting_priest.pg0"],block_state: {Name: "minecraft:blue_concrete"}, transformation: {left_rotation: [0.14644663f, -0.35355344f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999999f], translation: [-0.14644653f, 5.9604645E-8f, -0.85355335f]},Glowing:1b}


# cd
execute unless score @s brown_wool.xuan_ting_priest.pg_cd matches 1.. store result score @s brown_wool.xuan_ting_priest.pg_cd run random value 40..80

scoreboard players remove @s[scores={brown_wool.xuan_ting_priest.pg2=1..}] brown_wool.xuan_ting_priest.pg2 1
execute if score @s brown_wool.xuan_ting_priest.pg2 matches 1 run tag @s add brown_wool.xuan_ting_priest.pg0
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg0] run scoreboard players reset @s brown_wool.xuan_ting_priest.pg2
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg0] run scoreboard players reset @s brown_wool.xuan_ting_priest.pg_random
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg0] run tag @s remove brown_wool.xuan_ting_priest.cant_move
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg0] run tag @s remove brown_wool.xuan_ting_priest.pg
execute if entity @s[tag=brown_wool.xuan_ting_priest.pg0] run tag @s remove brown_wool.xuan_ting_priest.pg0




