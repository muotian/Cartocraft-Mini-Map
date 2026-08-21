execute store result score $hurt light_green.main.math run data get entity @s HurtTime

execute if score $hurt light_green.main.math matches 9 run function light_green:mob/boss/graud_golem/stone_stick/hurt

execute if score $hurt light_green.main.math matches 0 run function light_green:mob/boss/graud_golem/stone_stick/hurt_deafault

particle portal ~ ~1 ~ 0.25 0.5 0.25 0 1

execute if entity @s[tag=light_green.from_small] run return run function light_green:mob/small_golem/stone_stick/tick

scoreboard players add @s light_green.main.math 1
execute if score @s light_green.main.math matches 60 at @n[tag=light_green.boss.graud_golem] as @r[distance=..25] at @s run function light_green:mob/boss/graud_golem/ground_laser/ready/0
execute if score @s light_green.main.math matches 60 run scoreboard players set @s light_green.main.math 1