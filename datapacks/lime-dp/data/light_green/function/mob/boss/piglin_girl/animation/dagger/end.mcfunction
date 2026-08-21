execute if score @s light_green.boss.animation matches 8 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/skill4
execute if score $piglin_girl_skill4 light_green.main.math matches 1 run return fail
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing