
# 執行位置：同上

# skill: 施放技能

execute unless score @s brown_wool.cangting_general.skill_random matches 1.. store result score @s brown_wool.cangting_general.skill_random run random value 1..3


execute if score @s brown_wool.cangting_general.skill_random matches 1 unless score @s brown_wool.cangting_general.skill matches 1.. run scoreboard players set @s brown_wool.cangting_general.skill 76
execute if score @s brown_wool.cangting_general.skill_random matches 2 unless score @s brown_wool.cangting_general.skill matches 1.. run scoreboard players set @s brown_wool.cangting_general.skill 43
execute if score @s brown_wool.cangting_general.skill_random matches 3 unless score @s brown_wool.cangting_general.skill matches 1.. run scoreboard players set @s brown_wool.cangting_general.skill 98


execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 2.. as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @s run rotate @s facing entity @p[tag=brown_wool.cangting_general.player]
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 2.. run rotate @s facing entity @p[tag=brown_wool.cangting_general.player]
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 36..76 run particle dust{color:[0.32, 0.74, 1],scale:1.0} ~ ~ ~ 0.5 1 0.5 0.1 20
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 35 run particle dust{color:[0.32, 0.74, 1],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 250
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 35 at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run particle dust{color:[0.32, 0.74, 1],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 250
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 35 if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 35 unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 32 rotated ~ 0 run summon minecraft:item_display ^ ^1.5 ^ {Tags:["brown_wool.cangting_general.skill1.1","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.4"],item: {count: 1, id: "minecraft:golden_spear"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [2.9994993f, 3.0004997f, 2.999999f], translation: [0.0f, -0.19217348f, -1.8284063f]},Glowing:1b}
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 22 rotated ~ 0 run summon minecraft:item_display ^ ^1.5 ^ {Tags:["brown_wool.cangting_general.skill1.1","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.5"],item: {count: 1, id: "minecraft:golden_spear"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [2.9994993f, 3.0004997f, 2.999999f], translation: [0.0f, -0.19217348f, -1.8284063f]},Glowing:1b}
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 12 rotated ~ 0 run summon minecraft:item_display ^ ^1.5 ^ {Tags:["brown_wool.cangting_general.skill1.1","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.6"],item: {count: 1, id: "minecraft:golden_spear"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [2.9994993f, 3.0004997f, 2.999999f], translation: [0.0f, -0.19217348f, -1.8284063f]},Glowing:1b}
execute if score @s brown_wool.cangting_general.skill_random matches 1 if score @s brown_wool.cangting_general.skill matches 2 rotated ~ 0 run summon minecraft:item_display ^ ^1.5 ^ {Tags:["brown_wool.cangting_general.skill1.1","brown_wool.cangting_general.skill1.0","brown_wool.cangting_general.skill1.7"],item: {count: 1, id: "minecraft:golden_spear"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, -0.38268346f, 0.9238795f], scale: [2.9994993f, 3.0004997f, 2.999999f], translation: [0.0f, -0.19217348f, -1.8284063f]},Glowing:1b}


execute if score @s brown_wool.cangting_general.skill_random matches 2 if score @s brown_wool.cangting_general.skill matches 3..43 run particle dust{color:[0.32, 0.74, 1],scale:1.0} ~ ~ ~ 0.5 1 0.5 0.1 20
execute if score @s brown_wool.cangting_general.skill_random matches 2 if score @s brown_wool.cangting_general.skill matches 2 rotated ~ 0 run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.cangting_general.skill2.1","brown_wool.cangting_general.skill2.0"]}
execute if score @s brown_wool.cangting_general.skill_random matches 2 if score @s brown_wool.cangting_general.skill matches 2 rotated ~ 0 run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.cangting_general.skill2.2","brown_wool.cangting_general.skill2.0"],item: {count: 1, id: "minecraft:golden_spear"}, transformation: {left_rotation: [0.655618f, -0.26488686f, 0.26488686f, 0.655618f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.9999986f, 3.9999967f, 1.6874999f], translation: [0.0f, 0.0f, 0.0f]},Glowing:1b}
execute if score @s brown_wool.cangting_general.skill_random matches 2 if score @s brown_wool.cangting_general.skill matches 2 rotated ~ 0 run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.cangting_general.skill2.3","brown_wool.cangting_general.skill2.0"],item: {count: 1, id: "minecraft:golden_spear"}, transformation: {left_rotation: [0.655618f, -0.26488686f, 0.26488686f, 0.655618f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.9999986f, 3.9999967f, 1.6874999f], translation: [0.0f, 0.0f, 0.0f]},Glowing:1b}


execute if score @s brown_wool.cangting_general.skill_random matches 3 if score @s brown_wool.cangting_general.skill matches 58..98 run particle dust{color:[0.32, 0.74, 1],scale:1.0} ~ ~ ~ 0.5 1 0.5 0.1 20
execute if score @s brown_wool.cangting_general.skill_random matches 3 if score @s brown_wool.cangting_general.skill matches 58 run particle dust{color:[0.32, 0.74, 1],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 250
execute if score @s brown_wool.cangting_general.skill_random matches 3 if score @s brown_wool.cangting_general.skill matches 58 at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run particle dust{color:[0.32, 0.74, 1],scale:3.0} ~ ~ ~ 0.4 1 0.4 0.1 250
execute if score @s brown_wool.cangting_general.skill_random matches 3 if score @s brown_wool.cangting_general.skill matches 58 if predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} as @e[type=zombie_horse ,tag=brown_wool.cangting_general.horse,limit=1] at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.cangting_general.skill_random matches 3 if score @s brown_wool.cangting_general.skill matches 58 unless predicate {"condition": "entity_properties","entity": "this","predicate": {"vehicle": {}}} at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run tp @s ~ ~-0.5 ~
execute if score @s brown_wool.cangting_general.skill_random matches 3 if score @s brown_wool.cangting_general.skill matches 55 at @e[type=marker, tag=brown_wool.cangting_general.terrain ,limit=1] run summon minecraft:item_display ~ ~-0.5 ~ {Tags:["brown_wool.cangting_general.skill3.1","brown_wool.cangting_general.skill3.0"]}


execute if score @s brown_wool.cangting_general.skill matches 1.. run scoreboard players remove @s brown_wool.cangting_general.skill 1
execute if score @s brown_wool.cangting_general.skill matches 1 run scoreboard players reset @s brown_wool.cangting_general.skill_random
execute if score @s brown_wool.cangting_general.skill matches 1 store result score @s brown_wool.cangting_general.skill_cd run random value 80..140
execute if score @s brown_wool.cangting_general.skill matches 1 run tag @s remove brown_wool.cangting_general.cant_move
execute if score @s brown_wool.cangting_general.skill matches 1 run tag @s remove brown_wool.cangting_general.skill
execute if score @s brown_wool.cangting_general.skill matches 1 run scoreboard players reset @s brown_wool.cangting_general.skill

execute if score @s brown_wool.cangting_general.skill1 matches 1.. run scoreboard players reset @s brown_wool.cangting_general.skill1




