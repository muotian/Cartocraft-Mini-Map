execute if score @s light_green.boss.animation matches 1 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/nothing/play
execute if score @s light_green.boss.animation matches 7 if score $piglin_girl_skill2 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/dagger/start_1
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl.sprint_rotate.late light_green.main.math 6
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_skill4 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/skill4_2
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing