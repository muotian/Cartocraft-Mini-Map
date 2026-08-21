execute on target run tag @s add light_green.target
execute facing entity @n[tag=light_green.target] feet run rotate @s ~ 0
execute if score @s light_green.boss.animation matches 20 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 20 run attribute @s movement_speed modifier add light_green:piglin_girl_attack 0.1 add_value
execute if score @s light_green.boss.animation matches 15 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 15 run attribute @s movement_speed modifier add light_green:piglin_girl_attack -100 add_value
execute if score @s light_green.boss.animation matches 15 anchored eyes positioned ^ ^ ^ facing entity @n[tag=light_green.target] feet run function light_green:mob/boss/piglin_girl/animation/axe/down
execute as @n[tag=light_green.target] run tag @s remove light_green.target
execute if score @s light_green.boss.animation matches 32 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 29 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 28 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 23 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 20 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.5
execute if score @s light_green.boss.animation matches 18 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 8 run playsound minecraft:item.armor.equip_netherite hostile @a ~ ~ ~ 1 1.75
execute if score @s light_green.boss.animation matches 3 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 17 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:entity.player.attack.crit hostile @a ~ ~ ~ 1 0.5
execute if score @s light_green.boss.animation matches 15 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 0.75
execute if score @s light_green.boss.animation matches 15 rotated ~ 0 positioned ^ ^ ^1.5 run particle dust_pillar{block_state:{Name:blackstone}} ~ ~ ~ 0.5 0 0.5 2 20 force
execute if score @s light_green.boss.animation matches 10 if score $piglin_girl_level light_green.main.math matches 2 run function light_green:mob/boss/piglin_girl/skill/axe/jump_ready
execute if score @s light_green.boss.animation matches 1 run playsound minecraft:entity.piglin.step hostile @a ~ ~ ~ 1 1
execute if score @s light_green.boss.animation matches 0 run attribute @s movement_speed modifier remove light_green:piglin_girl_attack
execute if score @s light_green.boss.animation matches 0 run scoreboard players set $piglin_girl.sprint_rotate.late light_green.main.math 6
execute if score @s light_green.boss.animation matches 0 if score $piglin_girl_skill4 light_green.main.math matches 1 run return run function light_green:mob/boss/piglin_girl/skill/skill4_2
execute if score @s light_green.boss.animation matches 0 run function light_green:mob/boss/piglin_girl/move/detect_attack_nothing