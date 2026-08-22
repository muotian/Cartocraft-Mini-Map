execute unless score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/sprint_start/play
execute if score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/sprint_start_run/play
scoreboard players set @s wool_purple.boss_animation 31
scoreboard players set @s wool_purple.boss_type 4
execute as a11-0-0-0-1 on target run tag @s add wool_purple.sprint_target