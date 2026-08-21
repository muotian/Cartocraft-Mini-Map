execute facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 8 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run function light_green:mob/boss/piglin_girl/animation/dagger/sprint
execute if score @s light_green.boss.animation matches 8 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet run function light_green:mob/boss/piglin_girl/sprint_stop
execute if score @s light_green.boss.animation matches 8 run playsound minecraft:entity.player.splash.high_speed hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 8 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 6 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:entity.goat.long_jump hostile @a ~ ~ ~ 1.5 1
execute if score @s light_green.boss.animation matches 2 facing entity @n[tag=light_green.boss.piglin_girl.sprint_target] feet rotated ~ 0 positioned 0.0 0.0 0.0 run tp caba-0-0-0-1 ^ ^ ^-1
execute if score @s light_green.boss.animation matches 2 run data modify entity @s Motion set from entity caba-0-0-0-1 Pos
execute if score @s light_green.boss.animation matches ..1 run tag @e[tag=light_green.boss.piglin_girl.sprint_target] remove light_green.boss.piglin_girl.sprint_target
execute if score @s light_green.boss.animation matches ..1 store result score $Onground light_green.main.math run data get entity @s OnGround
execute if score @s light_green.boss.animation matches ..1 if score $Onground light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/dagger/jump_end