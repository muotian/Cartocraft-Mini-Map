execute if score @s light_green.move_step matches 3 run return run function light_green:mob/boss/piglin_girl/animation/moveend with storage mob:data
execute if score @s light_green.boss.animation matches 31 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 31 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 21 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 21 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 11 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 11 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.move_step matches 1 if score @s light_green.boss.animation matches 1 run function light_green:mob/boss/piglin_girl/weapon_anima/move/keeping/convert
execute if score @s light_green.move_step matches 1 if score @s light_green.boss.animation matches 1 run scoreboard players set @s light_green.move_step 2
execute if score @s light_green.move_step matches 1 unless score @s light_green.boss.animation matches 1.. run scoreboard players set @s light_green.boss.animation 10
execute if score @s light_green.move_step matches 2 if score @s light_green.boss.animation matches 1 run scoreboard players set @s light_green.boss.animation 41