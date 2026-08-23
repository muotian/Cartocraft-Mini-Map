
# 執行位置：同上

# cast: 施放技能

# 重置記分板
execute unless score @s brown_wool.thunder_spirit.pg_random matches 1.. store result score @s brown_wool.thunder_spirit.pg_random run random value 1..5
execute unless score @s brown_wool.thunder_spirit.pg2 matches 1.. run scoreboard players set @s brown_wool.thunder_spirit.pg2 20


execute if score @s brown_wool.thunder_spirit.pg_random matches 1 if score @s brown_wool.thunder_spirit.pg2 matches 20 at @s run summon minecraft:block_display ^ ^3.5 ^3 {Tags:["brown_wool.thunder_spirit.pg1","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:light_blue_concrete"}, transformation: {left_rotation: [-0.14644669f, 0.35355344f, -0.35355344f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0000005f, 2.0f, 2.0000002f], translation: [-1.707106f, 7.9472855E-8f, 0.29289314f]},Glowing:1b}

execute if score @s brown_wool.thunder_spirit.pg_random matches 2 if score @s brown_wool.thunder_spirit.pg2 matches 20 at @s run summon minecraft:block_display ^ ^3.5 ^3 {Tags:["brown_wool.thunder_spirit.pg2","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:purple_concrete"}, transformation: {left_rotation: [-0.14644669f, 0.35355344f, -0.35355344f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0000005f, 2.0f, 2.0000002f], translation: [-1.707106f, 7.9472855E-8f, 0.29289314f]},Glowing:1b}

execute if score @s brown_wool.thunder_spirit.pg_random matches 3 if score @s brown_wool.thunder_spirit.pg2 matches 20 at @s run summon minecraft:block_display ^ ^3.5 ^3 {Tags:["brown_wool.thunder_spirit.pg3","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:crying_obsidian"}, transformation: {left_rotation: [-0.14644669f, 0.35355344f, -0.35355344f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0000005f, 2.0f, 2.0000002f], translation: [-1.707106f, 7.9472855E-8f, 0.29289314f]},Glowing:1b}

execute if score @s brown_wool.thunder_spirit.pg_random matches 4 if score @s brown_wool.thunder_spirit.pg2 matches 20 at @s rotated ~ 0 run summon minecraft:block_display ^ ^4 ^3 {Tags:["brown_wool.thunder_spirit.pg4","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:light_blue_stained_glass"}, transformation: {left_rotation: [0.14644663f, -0.35355344f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999999f], translation: [-0.14644653f, 5.9604645E-8f, -0.85355335f]},Glowing:1b}
execute if score @s brown_wool.thunder_spirit.pg_random matches 4 if score @s brown_wool.thunder_spirit.pg2 matches 17 at @s rotated ~ 0 run summon minecraft:block_display ^2 ^2.5 ^3 {Tags:["brown_wool.thunder_spirit.pg4","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:light_blue_stained_glass"}, transformation: {left_rotation: [0.14644663f, -0.35355344f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999999f], translation: [-0.14644653f, 5.9604645E-8f, -0.85355335f]},Glowing:1b}
execute if score @s brown_wool.thunder_spirit.pg_random matches 4 if score @s brown_wool.thunder_spirit.pg2 matches 14 at @s rotated ~ 0 run summon minecraft:block_display ^-2 ^2.5 ^3 {Tags:["brown_wool.thunder_spirit.pg4","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:light_blue_stained_glass"}, transformation: {left_rotation: [0.14644663f, -0.35355344f, -0.35355338f, 0.8535534f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.9999999f, 0.9999999f, 0.9999999f], translation: [-0.14644653f, 5.9604645E-8f, -0.85355335f]},Glowing:1b}

execute if score @s brown_wool.thunder_spirit.pg_random matches 5 if score @s brown_wool.thunder_spirit.pg2 matches 20 at @s run summon minecraft:block_display ^ ^3.5 ^3 {Tags:["brown_wool.thunder_spirit.pg5","brown_wool.thunder_spirit.pg0"],block_state: {Name: "minecraft:blue_concrete"}, transformation: {left_rotation: [-0.14644669f, 0.35355344f, -0.35355344f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0000005f, 2.0f, 2.0000002f], translation: [-1.707106f, 7.9472855E-8f, 0.29289314f]},Glowing:1b}


# cd
execute unless score @s brown_wool.thunder_spirit.pg_cd matches 1.. store result score @s brown_wool.thunder_spirit.pg_cd run random value 160..280

scoreboard players remove @s[scores={brown_wool.thunder_spirit.pg2=1..}] brown_wool.thunder_spirit.pg2 1
execute if score @s brown_wool.thunder_spirit.pg2 matches 1 run tag @s add brown_wool.thunder_spirit.pg0
execute if entity @s[tag=brown_wool.thunder_spirit.pg0] run scoreboard players reset @s brown_wool.thunder_spirit.pg2
execute if entity @s[tag=brown_wool.thunder_spirit.pg0] run scoreboard players reset @s brown_wool.thunder_spirit.pg_random
execute if entity @s[tag=brown_wool.thunder_spirit.pg0] run tag @s remove brown_wool.thunder_spirit.pg
execute if entity @s[tag=brown_wool.thunder_spirit.pg0] run tag @s remove brown_wool.thunder_spirit.pg0




