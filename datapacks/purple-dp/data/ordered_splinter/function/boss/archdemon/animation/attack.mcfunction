execute if score @s wool_purple.boss_move_step matches 1 if score @s wool_purple.boss_animation matches 26 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 18 run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 2 0.1
execute if score @s wool_purple.boss_animation matches 14 as a11-0-0-0-1 at @s anchored feet positioned ~ ~1 ~ positioned ^ ^ ^1 run function ordered_splinter:boss/archdemon/animation/attack_box
execute if score @s wool_purple.boss_animation matches 0 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.4
execute if score @s wool_purple.boss_animation matches 0 run function ordered_splinter:boss/archdemon/move/detect_attack