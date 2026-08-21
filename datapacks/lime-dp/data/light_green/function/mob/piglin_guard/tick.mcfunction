tag @s remove light_green.change
execute store result score $hurt light_green.main.math run data get entity @s HurtTime
execute if score $hurt light_green.main.math matches 9 run function light_green:mob/piglin_guard/hurt