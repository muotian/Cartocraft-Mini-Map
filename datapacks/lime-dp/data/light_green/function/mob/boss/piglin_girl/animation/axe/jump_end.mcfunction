execute if score @s light_green.boss.animation matches 25 run function light_green:mob/boss/piglin_girl/animation/axe/earth_quack/0 with storage light_green:smoke
execute if score @s light_green.boss.animation matches 25 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/battle/play
execute if score @s light_green.boss.animation matches 25 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
execute if score @s light_green.boss.animation matches 19 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 16 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl.sprint_rotate.late light_green.main.math 6
execute if score @s light_green.boss.animation matches 0 as @e[tag=aj.piglin_girl_head.root,limit=1,distance=..30] run function animated_java:piglin_girl_head/animations/nothing_battle/play
execute if score @s light_green.boss.animation matches 0 run tag @s remove light_green.boss.piglin_girl.axe.jump
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl_axe_jump_late light_green.main.math 13
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/skill4
execute if score $piglin_girl_skill4 light_green.main.math matches 1 run return fail
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing