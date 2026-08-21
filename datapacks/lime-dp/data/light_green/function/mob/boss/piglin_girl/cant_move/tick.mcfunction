scoreboard players remove @s light_green.cant_move 1
execute if score @s light_green.cant_move matches 0 run attribute @s movement_speed modifier remove light_green:cant_move
execute if score @s light_green.cant_move matches 0 run attribute @s jump_strength modifier remove light_green:cant_move
execute if score @s light_green.cant_move matches 0 run attribute @s gravity modifier remove light_green:cant_move
execute if score @s light_green.cant_move matches 0 run scoreboard players reset @s light_green.cant_move