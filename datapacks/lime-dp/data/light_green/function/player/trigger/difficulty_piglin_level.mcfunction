scoreboard players enable @s light_green.difficulty_piglin_level

execute if score @s light_green.difficulty_piglin_level matches 1..3 run function light_green:mob/boss/piglin_girl/start_level

trigger light_green.difficulty_piglin_level set 0
scoreboard players enable @s light_green.difficulty_piglin_level