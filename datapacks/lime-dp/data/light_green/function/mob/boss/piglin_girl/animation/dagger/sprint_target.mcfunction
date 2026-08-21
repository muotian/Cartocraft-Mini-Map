execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1.25
execute if score @s light_green.boss.animation matches ..1 run function light_green:mob/boss/piglin_girl/sprint
execute if entity @n[tag=light_green.boss.piglin_girl.sprint_target,distance=..2] run function light_green:mob/boss/piglin_girl/skill/dagger/sprint_target_end