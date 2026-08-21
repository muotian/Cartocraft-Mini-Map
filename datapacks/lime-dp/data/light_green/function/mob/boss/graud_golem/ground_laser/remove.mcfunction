execute store result score $laser_width light_green.main.math run data get entity @s transformation.scale[0] 10
execute store result entity @s transformation.scale[0] float 0.1 run scoreboard players remove $laser_width light_green.main.math 3
execute store result entity @s transformation.scale[2] float 0.1 run scoreboard players get $laser_width light_green.main.math