execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 15 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run function light_green:mob/boss/piglin_girl/animation/spear/sprint
execute if score @s light_green.boss.animation matches 15 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run function light_green:mob/boss/piglin_girl/sprint_end
execute if score @s light_green.boss.animation matches 13 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/spear/2_deal
execute if score @s light_green.boss.animation matches 8 if score $piglin_girl_skill2 light_green.main.math matches 1 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run function light_green:mob/boss/piglin_girl/animation/spear/sprint
execute if score @s light_green.boss.animation matches 8 if score $piglin_girl_skill2 light_green.main.math matches 1 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run function light_green:mob/boss/piglin_girl/sprint_end
execute if score @s light_green.boss.animation matches ..7 run kill @e[tag=light_green.boss.piglin_girl.sprint_target,type=marker]
execute if score @s light_green.boss.animation matches 6 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/spear/2_deal
execute if score @s light_green.boss.animation matches 7 run playsound minecraft:item.spear.attack hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 8 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 6 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_skill2 light_green.main.math matches 1 run scoreboard players set $piglin_girl_spear_sprint light_green.main.math 1
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_skill2 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/sprint_weapon
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl.sprint_rotate.late light_green.main.math 6
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_skill4 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/skill4_2
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing