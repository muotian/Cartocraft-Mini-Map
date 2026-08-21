
execute on target run tag @s add light_green.target
execute facing entity @n[tag=light_green.target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 17 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 7 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 10 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 5 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 10 if entity @n[tag=light_green.target] facing entity @n[tag=light_green.target] feet run function light_green:mob/boss/piglin_girl/throw_thing/axe/summon
execute if score @s light_green.boss.animation matches 10 unless entity @n[tag=light_green.target] rotated as @s run function light_green:mob/boss/piglin_girl/throw_thing/axe/summon
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl_sprint light_green.main.math 0
execute if score @s light_green.boss.animation matches 0 if entity @n[tag=light_green.target,distance=4.5..] run scoreboard players set $piglin_girl_sprint light_green.main.math 1
execute as @n[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_weapon_ready light_green.main.math matches 1 run function light_green:mob/boss/piglin_girl/skill/dagger/replace
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_weapon_ready light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/spear/replace
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_sprint light_green.main.math matches 1 run tag @s add light_green.target_sprint_ready
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_sprint light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/sprint_target
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing