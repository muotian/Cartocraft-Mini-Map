execute store result score @s icer.random run random value 1..2
execute if score @s icer.random matches 1 run function icer:plague/reset_plague
scoreboard players reset @s icer.random