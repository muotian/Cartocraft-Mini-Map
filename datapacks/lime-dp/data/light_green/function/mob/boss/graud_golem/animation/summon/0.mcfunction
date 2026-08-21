execute if score @s light_green.boss.animation matches 30 run playsound minecraft:block.trial_spawner.detect_player hostile @a ~ ~ ~ 5 0.75
execute if score @s light_green.boss.animation matches 0 as @n[tag=aj.graud_golem.root,type=item_display] run function animated_java:graud_golem/animations/kurukuru/play
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.boss.attack_type -1
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $kuru3 light_green.main.math 0
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.mob.ai 2
execute if score @s light_green.boss.animation matches 0 run scoreboard players set @s light_green.boss.animation 1