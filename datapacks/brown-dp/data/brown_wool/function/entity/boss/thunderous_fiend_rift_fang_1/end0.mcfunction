


tag @s remove brown_wool.thunderous_fiend_rift_fang.terrain_2
tag @a remove brown_wool.thunderous_fiend_rift_fang.player
tag @a remove brown_wool.thunderous_fiend_rift_fang.player2
stopsound @a * brown_wool:custom.keys_of_moon_thunder_unison
stopsound @a * brown_wool:custom.makai_symphony_endless_storm
scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound
scoreboard players reset @a brown_wool.thunderous_fiend_rift_fang.playsound2
bossbar set brown_wool.thunderous_fiend_rift_fang_1 players
bossbar set brown_wool.thunderous_fiend_rift_fang_1 visible false
bossbar set brown_wool.thunderous_fiend_rift_fang_2 players
bossbar set brown_wool.thunderous_fiend_rift_fang_2 visible false
execute unless score @s brown_wool.thunderous_fiend_rift_fang.end matches 1.. at @s run function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/terrain0
execute unless score @s brown_wool.thunderous_fiend_rift_fang.end matches 1.. at @s run summon marker ~ ~-0.4 ~16 {Tags:["brown_wool.thunderous_fiend_rift_fang.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.thunderous_fiend_rift_fang.end matches 1.. at @s run summon marker ~ ~-0.4 ~-16 {Tags:["brown_wool.thunderous_fiend_rift_fang.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.thunderous_fiend_rift_fang.end matches 1.. at @s run summon marker ~16 ~-0.4 ~ {Tags:["brown_wool.thunderous_fiend_rift_fang.end1"],Rotation:[0,0]}
execute unless score @s brown_wool.thunderous_fiend_rift_fang.end matches 1.. at @s run summon marker ~-16 ~-0.4 ~ {Tags:["brown_wool.thunderous_fiend_rift_fang.end1"],Rotation:[0,0]}
function brown_wool:entity/boss/thunderous_fiend_rift_fang_1/kill
scoreboard players add @s brown_wool.thunderous_fiend_rift_fang.end 1


execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 202 run summon minecraft:block_display ~ ~-0.38 ~ {Tags:["brown_wool.thunder_spirit.brown_wool"],block_state: {Name: "minecraft:brown_wool"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.25f, 0.25f, 0.25f], translation: [-0.125f, -0.125f, -0.125f]}}
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 202 run kill @e[type=marker,tag=brown_wool.thunderous_fiend_rift_fang.end1]
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 202 run summon marker ~ ~0.4 ~ {Tags:["brown_wool.thunder_spirit2.narrative_marker"],Rotation:[180,0]}
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 202 run summon marker ~ ~45 ~ {Tags:["brown_wool.thunder_spirit.terrain_0"]}
execute if score @s brown_wool.thunderous_fiend_rift_fang.end matches 202.. run kill @s




