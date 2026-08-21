
scoreboard players set #new_rot white.main 1800
execute store result entity @s Rotation[0] float 0.1 run scoreboard players operation #new_rot white.main -= #curr_rot white.main