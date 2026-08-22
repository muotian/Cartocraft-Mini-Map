execute unless score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/attack/play
execute if score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/attack_run/play
scoreboard players set @s wool_purple.boss_animation 31
scoreboard players set @s wool_purple.boss_type 1