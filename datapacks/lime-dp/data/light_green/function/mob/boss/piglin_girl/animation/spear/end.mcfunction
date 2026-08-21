execute on target run tag @s add light_green.target
execute as @s at @n[tag=light_green.target] anchored feet positioned ~ ~-2 ~ facing entity @s eyes facing ^ ^ ^-1 run rotate @s ~ ~
execute as @n[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/skill4
execute if score $piglin_girl_skill4 light_green.main.math matches 1 run return fail
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing