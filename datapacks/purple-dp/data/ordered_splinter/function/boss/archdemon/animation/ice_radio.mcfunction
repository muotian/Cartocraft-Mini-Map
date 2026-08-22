execute as a11-0-0-0-1 on target run tag @s add wool_purple.target
execute if score @s wool_purple.boss_move_step matches 1 if score @s wool_purple.boss_animation matches 38 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.4
execute if score @s wool_purple.boss_animation matches 35 run playsound minecraft:block.creaking_heart.spawn hostile @a ~ ~ ~ 2 0.8
execute if score @s wool_purple.boss_animation matches 16 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 16 positioned ^0.25 ^3 ^0.5 run function ordered_splinter:boss/archdemon/animation/ice_bird
execute if score @s wool_purple.boss_animation matches 16 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.4
execute if score @s wool_purple.boss_animation matches 0 run function ordered_splinter:boss/archdemon/move/detect_attack
execute as a11-0-0-0-1 on target run tag @s remove wool_purple.target