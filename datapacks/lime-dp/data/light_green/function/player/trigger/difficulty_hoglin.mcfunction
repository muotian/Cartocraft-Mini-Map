scoreboard players enable @s light_green.difficulty_hoglin

execute if score @s light_green.difficulty_hoglin matches 1..3 run function light_green:mob/boss/big_hoglin/limit/dialog/check_always

trigger light_green.difficulty_hoglin set 0
scoreboard players enable @s light_green.difficulty_hoglin