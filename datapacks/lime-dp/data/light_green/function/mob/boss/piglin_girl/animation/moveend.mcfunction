execute if score @s light_green.boss.animation matches 10 run function light_green:mob/boss/piglin_girl/weapon_anima/move/end/convert
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/weapon_anima/idle/convert
execute if score @s light_green.boss.animation matches 0 run return run scoreboard players set @s light_green.move_step 0