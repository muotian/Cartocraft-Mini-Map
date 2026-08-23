#執行者:player(技能發動成功)
scoreboard players add @s green_wool.pipe_skill 1
#生marker
execute if entity @s[scores={green_wool.pipe_skill=1}] run playsound minecraft:block.stone_button.click_on
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^ ^ ^3 {Tags:["green_wool.pipe_skill_marker"]}
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^1 ^ ^2.8 {Tags:["green_wool.pipe_skill_marker"]}
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^-1 ^ ^2.8 {Tags:["green_wool.pipe_skill_marker"]}
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^2 ^ ^2.6 {Tags:["green_wool.pipe_skill_marker"]}
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^-2 ^ ^2.6 {Tags:["green_wool.pipe_skill_marker"]}
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^3 ^ ^2.4 {Tags:["green_wool.pipe_skill_marker"]}
execute if entity @s[scores={green_wool.pipe_skill=1}] at @s rotated ~ 0 run summon marker ^-3 ^ ^2.4 {Tags:["green_wool.pipe_skill_marker"]}
#抗性效果
execute if entity @s[scores={green_wool.pipe_skill=1}] run effect give @s resistance 1 3
#定身
execute if entity @s[scores={green_wool.pipe_skill=1..10}] run tp @s @s
#進cd
execute if entity @s[scores={green_wool.pipe_skill=1}] run item modify entity @s weapon.mainhand green_wool:no_blocks
#隱藏物品
execute if entity @s[scores={green_wool.pipe_skill=1}] run item modify entity @s weapon.mainhand green_wool:air
#技能動畫
execute if entity @s[scores={green_wool.pipe_skill=3}] run summon minecraft:item_display ^ ^1 ^ {Tags:["green_wool.pipe_display"],item: {components: {"minecraft:item_model": "green_wool:pipe_item"}, count: 1, id: "minecraft:stone"}, transformation: {left_rotation: [0.0f, 0.3007058f, 0.0f, 0.953717f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 2.0f, 2.0f], translation: [0.0f, 2.0f, 1.0f]},interpolation_duration:3}
execute if entity @s[scores={green_wool.pipe_skill=3}] run tp @n[tag=green_wool.pipe_display] @s
execute if entity @s[scores={green_wool.pipe_skill=5}] run data merge entity @n[tag=green_wool.pipe_display] {item: {components: {"minecraft:item_model": "green_wool:pipe_item"}, count: 1, id: "minecraft:stone"}, transformation: {left_rotation: [0.746528f, 0.18756841f, 0.23437321f, 0.5937872f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.000001f, 2.0000021f, 2.0000014f], translation: [0.0023406148f, -0.1f, 1.7244915f]}}
execute if entity @s[scores={green_wool.pipe_skill=10}] at @s positioned ^ ^ ^3 run playsound green_wool:pipe
execute if entity @s[scores={green_wool.pipe_skill=10}] at @e[tag=green_wool.pipe_skill_marker] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 5
execute if entity @s[scores={green_wool.pipe_skill=10}] at @e[tag=green_wool.pipe_skill_marker] as @e[distance=..3.5] run damage @s[type=!player] 60 lightning_bolt
#回復
execute if entity @s[scores={green_wool.pipe_skill=10}] run kill @n[tag=green_wool.pipe_display]
execute if entity @s[scores={green_wool.pipe_skill=10}] run attribute @s movement_speed base reset
execute if entity @s[scores={green_wool.pipe_skill=10}] run item modify entity @s weapon.mainhand green_wool:no_air_pipe
execute if entity @s[scores={green_wool.pipe_skill=10}] run kill @e[tag=green_wool.pipe_skill_marker]
execute if entity @s[scores={green_wool.pipe_skill=120}] run playsound minecraft:block.wooden_button.click_off block @s ~ ~ ~ 10
execute if entity @s[scores={green_wool.pipe_skill=120}] run tag @s remove green_wool.pipe_skill
execute if entity @s[scores={green_wool.pipe_skill=120}] run scoreboard players set @s green_wool.pipe_skill 0