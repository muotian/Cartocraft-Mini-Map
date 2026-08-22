execute unless score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/jump_ready/play
execute if score @s wool_purple.boss_move_step matches 1 run function animated_java:archdemon/animations/jump_ready_run/play
scoreboard players set @s wool_purple.boss_animation 21
scoreboard players set @s wool_purple.boss_type 2
attribute a11-0-0-0-1 safe_fall_distance modifier add wool_purple.archdemon_jump 100 add_value