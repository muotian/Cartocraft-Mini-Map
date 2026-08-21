execute if score @s light_green.boss.animation matches 40 if score @s light_green.main.math matches 1..400 run function light_green:mob/boss/graud_golem/music/start_pillar/0
execute if score @s light_green.boss.animation matches 30 if score @s light_green.main.math matches 1..400 run playsound block.anvil.land hostile @a ~ ~ ~ 4 0
execute if score @s light_green.boss.animation matches 33 run playsound minecraft:block.trial_spawner.ominous_activate hostile @a ~ ~ ~ 5 1
execute if score @s light_green.boss.animation matches 20 run playsound minecraft:block.trial_spawner.close_shutter hostile @a ~ ~ ~ 3 0.5
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:block.trial_spawner.close_shutter hostile @a ~ ~ ~ 3 0.75
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:block.trial_spawner.close_shutter hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:block.trial_spawner.close_shutter hostile @a ~ ~ ~ 3 1.25
execute if score @s light_green.boss.animation matches 40 run playsound minecraft:block.trial_spawner.about_to_spawn_item hostile @a ~ ~ ~ 5 0.8
execute if score @s light_green.boss.animation matches 0..27 run tp @s ~ ~0.2 ~
execute if score @s light_green.boss.animation matches 0 as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/kurukuru/play
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $laser_speed light_green.main.math 0
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.boss.attack_type 2
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $kuru3 light_green.main.math 0
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.boss.animation 1