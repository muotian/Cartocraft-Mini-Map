scoreboard players enable @s light_green.difficulty_piglin

execute if score @s light_green.difficulty_piglin matches 1..3 run function light_green:mob/boss/piglin_girl/start

trigger light_green.difficulty_piglin set 0
scoreboard players enable @s light_green.difficulty_piglin