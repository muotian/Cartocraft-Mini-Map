execute unless score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/throw_ice/play
execute if score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/throw_ice_run/play
scoreboard players set @s wool_purple.boss_animation 41
scoreboard players set @s wool_purple.boss_type 6