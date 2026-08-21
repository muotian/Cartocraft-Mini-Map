
scoreboard players set #is_bounce white.main 1
execute store result score #curr_rot white.main run data get entity @s Rotation[0] 10

execute if score #curr_rot white.main matches 0.. run return run function white:move/temptation/bounce/z2

scoreboard players set #new_rot white.main -1800
execute store result entity @s Rotation[0] float 0.1 run scoreboard players operation #new_rot white.main -= #curr_rot white.main