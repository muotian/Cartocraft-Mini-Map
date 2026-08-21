execute on target run tag @s add light_green.damage_locator
execute facing entity @n[tag=light_green.damage_locator] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 4 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 2
execute if score @s light_green.boss.animation matches 2 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 1 run particle minecraft:dust{color:16777215,scale:2.5} ~ ~ ~ 0.25 0.5 0.25 1 5
execute if score @s light_green.boss.animation matches 1 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 1 run attribute @s movement_speed modifier add light_green:piglin_girl_attack 0.55 add_value
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1.5 1.5
execute if score @s light_green.boss.animation matches 0 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.damage_locator] feet unless score $piglin_girl.hurt light_green.main.math matches 2..10 run function light_green:mob/boss/piglin_girl/animation/dagger/dash_dmg
execute as @n[tag=light_green.damage_locator] run tag @s remove light_green.damage_locator
execute if score @s light_green.boss.animation matches 0 unless score $piglin_girl_dagger light_green.main.math = $piglin_girl_dagger_target light_green.main.math run function light_green:mob/boss/piglin_girl/skill/dagger/3
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_dagger light_green.main.math = $piglin_girl_dagger_target light_green.main.math run function light_green:mob/boss/piglin_girl/skill/dagger/end