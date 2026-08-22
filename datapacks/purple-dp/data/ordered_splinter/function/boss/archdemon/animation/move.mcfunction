execute if score @s wool_purple.boss_move_step matches 2 run return run function ordered_splinter:boss/archdemon/animation/move_end
execute if score @s wool_purple.boss_animation matches 20 at @s run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.4
execute if score @s wool_purple.boss_animation matches 0 at @s run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 0 at @s run scoreboard players set @s wool_purple.boss_animation 41