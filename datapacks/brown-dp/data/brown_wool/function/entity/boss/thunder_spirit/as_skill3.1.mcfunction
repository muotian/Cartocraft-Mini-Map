



execute unless score @s brown_wool.thunder_spirit.skill3.1 matches 0.. store result score @s brown_wool.thunder_spirit.skill3.2 run random value 1..40




execute if entity @s[tag=brown_wool.thunder_spirit.skill3.1] if score @s brown_wool.thunder_spirit.skill3.2 matches 80.. run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.thunder_spirit.skill3.0","brown_wool.thunder_spirit.skill3.3"],Glowing:1b,item: {count: 1, id: "minecraft:diamond_spear"}, transformation: {left_rotation: [0.27059805f, -0.6532815f, -0.27059805f, 0.6532815f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5000004f, 1.5000001f, 1.4999998f], translation: [0.0f, 0.0f, 0.0f]}}
execute if entity @s[tag=brown_wool.thunder_spirit.skill3.2] if score @s brown_wool.thunder_spirit.skill3.2 matches 80.. run summon minecraft:item_display ~ ~ ~ {Tags:["brown_wool.thunder_spirit.skill3.0","brown_wool.thunder_spirit.skill3.4"],Glowing:1b,item: {count: 1, id: "minecraft:trident"}, transformation: {left_rotation: [0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0000005f, 0.99999994f, 0.99999994f], translation: [-0.5f, 0.5f, 1.5f]}}


execute if score @s brown_wool.thunder_spirit.skill3.2 matches 80.. store result score @s brown_wool.thunder_spirit.skill3.2 run random value 1..40





execute if score @s brown_wool.thunder_spirit.skill3.1 matches 40.. run scoreboard players add @s brown_wool.thunder_spirit.skill3.2 1
scoreboard players add @s brown_wool.thunder_spirit.skill3.1 1


execute if score @s brown_wool.thunder_spirit.skill3.1 matches 200.. run kill @s


