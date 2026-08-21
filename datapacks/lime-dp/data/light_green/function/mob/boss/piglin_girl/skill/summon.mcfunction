execute as @e[tag=aj.piglin_girl.root,limit=1] run function animated_java:piglin_girl/animations/summon/play
scoreboard players set @s light_green.boss.animation 91
scoreboard players set @s light_green.boss.attack_type 0
execute at @n[tag=light_green.piglin_girl.summon_camera1] positioned ~ ~0.1 ~ run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera1_real"],teleport_duration:1}
execute at @n[tag=light_green.piglin_girl.summon_camera2] run summon item_display ~ ~ ~ {Tags:["light_green.piglin_girl.summon_camera2_real"],teleport_duration:1}
kill @n[tag=light_green.piglin_girl.summon_camera1]
kill @n[tag=light_green.piglin_girl.summon_camera2]
data modify entity @s NoAI set value 1b
attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value