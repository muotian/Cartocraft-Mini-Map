particle smoke ~ ~ ~ 0.1 0.5 0.1 0.1 10
particle minecraft:dust_color_transition{from_color:[0.0f,0.7f,0.0f],to_color:[0.1f,0.3f,0.2f],scale:1.2} ~ ~1 ~ 0.1 0.1 0.1 0.1 5
execute at @s[scores={mini_light.monster_duration=20}] run playsound item.trident.riptide_1 hostile @a ~ ~ ~ 0.8 0.8
execute at @s[scores={mini_light.monster_duration=20}] run playsound item.trident.riptide_2 hostile @a ~ ~ ~ 0.8 0.8

execute as @s[scores={mini_light.monster_duration=20}] facing entity @p feet run tp @s ~ ~ ~ ~ ~
execute as @s[tag=mini_light.left_dodge] at @s rotated ~-81 0 if function mini_light:monster/dodger/check run tp @s ^ ^ ^0.5 ~90 ~
execute as @s[tag=mini_light.right_dodge] at @s rotated ~81 0 if function mini_light:monster/dodger/check run tp @s ^ ^ ^0.5 ~-90 ~
execute if block ~ ~-0.5 ~ air run tp @s ~ ~-0.5 ~
execute unless block ~ ~ ~ air run tp @s ~ ~0.5 ~

tag @s[scores={mini_light.monster_duration=1}] remove mini_light.left_dodge
tag @s[scores={mini_light.monster_duration=1}] remove mini_light.right_dodge

scoreboard players remove @s mini_light.monster_duration 1