execute if score @s wool_purple.boss_move_step matches 1 if score @s wool_purple.boss_animation matches 25 run playsound entity.ravager.step hostile @a ~ ~ ~ 2 1.2
execute if score @s wool_purple.boss_animation matches 13 run playsound entity.ender_dragon.flap hostile @a ~ ~ ~ 2 1.2
execute facing entity @n[tag=wool_purple.sprint_target] feet run rotate @s ~ 0
execute if score @s wool_purple.boss_animation matches 11 as a11-0-0-0-1 at @s run function ordered_splinter:boss/archdemon/motion_sprint
execute if score @s wool_purple.boss_animation matches ..11 at a11-0-0-0-1 positioned ~-.5 ~-.5 ~-.5 if entity @n[dx=0,tag=wool_purple.sprint_target] run return run function ordered_splinter:boss/archdemon/skill/sprint_stop
execute if score @s wool_purple.boss_animation matches 0 run function ordered_splinter:boss/archdemon/skill/sprint_stop