scoreboard players enable @s light_green.piglin_girl_type

execute if score @s light_green.piglin_girl_type matches 1 run function light_green:arena/dialog/difficulty_piglin_girl
execute if score @s light_green.piglin_girl_type matches 2 run function light_green:arena/dialog/difficulty_piglin_girl_level


trigger light_green.piglin_girl_type set 0
scoreboard players enable @s light_green.piglin_girl_type