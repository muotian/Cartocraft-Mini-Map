scoreboard players enable @s light_green.big_hoglin.limit


execute if score @s light_green.big_hoglin.limit matches 1 run function light_green:mob/boss/big_hoglin/limit/dialog/1/yes
execute if score @s light_green.big_hoglin.limit matches 2 run function light_green:mob/boss/big_hoglin/limit/dialog/1/no
execute if score @s light_green.big_hoglin.limit matches 3 run function light_green:mob/boss/big_hoglin/limit/dialog/always/yes
execute if score @s light_green.big_hoglin.limit matches 4 run function light_green:mob/boss/big_hoglin/limit/dialog/always/no

trigger light_green.big_hoglin.limit set 0
scoreboard players enable @s light_green.big_hoglin.limit