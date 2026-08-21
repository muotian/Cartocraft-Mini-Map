execute if score @s light_green.boss.animation matches 40 run playsound light_green:fight_music-graud_golem-1 record @a ~ ~ ~ 10 1
execute if score @s light_green.boss.animation matches 40 run playsound light_green:fight_music-graud_golem-2 record @a ~ ~ ~ 10 1
execute if score @s light_green.boss.animation matches 0..40 run stopsound @a record light_green:fight_music-graud_golem-1
execute if score @s light_green.boss.animation matches 0..40 run stopsound @a record light_green:fight_music-graud_golem-2
execute if score @s light_green.boss.animation matches 40 run playsound minecraft:block.trial_spawner.detect_player hostile @a ~ ~ ~ 5 0.75
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:block.trial_spawner.step hostile @a ~ ~ ~ 5 0.2
execute if score @s light_green.boss.animation matches 0 as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/nothing/play
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.mob.ai 2