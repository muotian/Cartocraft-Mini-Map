execute as a11-0-0-0-1 on target run tag @s add wool_purple.target
execute if score @s wool_purple.boss_move_step matches 1 if score @s wool_purple.boss_animation matches 12 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 2 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
execute facing entity @n[tag=wool_purple.target] feet run rotate @s ~ 0
execute if score @s wool_purple.boss_animation matches 2 as a11-0-0-0-1 at @s run function ordered_splinter:boss/archdemon/motion
execute if score @s wool_purple.boss_animation matches ..0 if score $on_ground wool_purple.boss_animation matches 1 run function ordered_splinter:boss/archdemon/skill/landing
execute as a11-0-0-0-1 on target run tag @s remove wool_purple.target