execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 8 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 6 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
tag @e[tag=light_green.boss.piglin_girl.sprint_target] remove light_green.boss.piglin_girl.sprint_target
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/skill/dagger/jump