execute facing entity @n[tag=light_green.boss.piglin_girl.target] feet run rotate @s ~ ~
execute if score @s light_green.boss.animation matches 14 run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1.5 1.5
execute if score @s light_green.boss.animation matches 12 run playsound minecraft:entity.ender_dragon.flap hostile @a ~ ~ ~ 1.5 1.5
execute if score @s light_green.boss.animation matches 12 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:item.spear.attack hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 17 at @n[tag=light_green.boss.piglin_girl.target] positioned ~ ~1.25 ~ run function light_green:mob/boss/piglin_girl/attack_range/spear/white
execute if score @s light_green.boss.animation matches 3 at @n[tag=light_green.boss.piglin_girl.target] positioned ~ ~1.25 ~ run function light_green:mob/boss/piglin_girl/attack_range/spear/gold
execute if score @s light_green.boss.animation matches 2 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.target] feet run function light_green:mob/boss/piglin_girl/animation/spear/deal
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_level light_green.main.math matches 2 unless score $piglin_girl_skill4 light_green.main.math matches 2 run return run function light_green:mob/boss/piglin_girl/skill/spear/2_deal
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_level light_green.main.math matches 2 if score $piglin_girl_skill4 light_green.main.math matches 2 run scoreboard players reset $piglin_girl_skill4 light_green.main.math
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/skill/spear/end_deal