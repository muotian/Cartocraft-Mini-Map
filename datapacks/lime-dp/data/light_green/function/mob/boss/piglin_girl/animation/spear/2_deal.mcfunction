execute if score @s light_green.boss.animation matches 15 on target run tag @s add light_green.target
execute if score @s light_green.boss.animation matches 15 at @s facing entity @n[tag=light_green.boss.piglin_girl.sweep_target] feet rotated ~ 0 run tp @n[tag=light_green.boss.piglin_girl.target] ^ ^ ^6
execute if score @s light_green.boss.animation matches 15 at @s facing entity @n[tag=light_green.target] feet rotated ~ 0 run tp @n[tag=light_green.boss.piglin_girl.target] ^ ^ ^6
execute if score @s light_green.boss.animation matches 15 as @n[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 15 as @e[tag=light_green.boss.piglin_girl.sweep_target,type=!marker] run tag @s remove light_green.boss.piglin_girl.sweep_target
execute if score @s light_green.boss.animation matches 9 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 0 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 14 anchored eyes positioned ^ ^ ^ positioned ~ ~-1.5 ~ unless score $piglin_girl_spear.sweep light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/attack_range/spear/sweep_white
execute if score @s light_green.boss.animation matches 14 anchored eyes positioned ^ ^ ^ positioned ~ ~-1.5 ~ if score $piglin_girl_spear.sweep light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/attack_range/spear/sweep_white_big
execute if score @s light_green.boss.animation matches 5 anchored eyes positioned ^ ^ ^ positioned ~ ~-1.5 ~ unless score $piglin_girl_spear.sweep light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/attack_range/spear/sweep_gold
execute if score @s light_green.boss.animation matches 5 anchored eyes positioned ^ ^ ^ positioned ~ ~-1.5 ~ if score $piglin_girl_spear.sweep light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/attack_range/spear/sweep_gold_big
execute if score @s light_green.boss.animation matches 1 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.target] feet run function light_green:mob/boss/piglin_girl/animation/spear/sweep
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_spear.sweep light_green.main.math matches 2.. run tag @s add light_green.target_sprint_ready_spear
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_skill4 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/skill4_2
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/skill/spear/end2_deal