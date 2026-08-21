execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 7 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.camel_husk.dash hostile @a ~ ~ ~ 3 0
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.breeze.jump hostile @a ~ ~ ~ 3 1
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches ..1 run function light_green:mob/boss/piglin_girl/sprint
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,distance=..3.25] run function light_green:mob/boss/piglin_girl/skill/spear/sprint_target_end