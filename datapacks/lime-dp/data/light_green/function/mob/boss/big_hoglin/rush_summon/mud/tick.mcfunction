execute store result storage light_green:boss size2 float 0.5 run scoreboard players remove @s light_green.mob.ai 2
execute store result storage light_green:boss size int 1 run scoreboard players remove @s light_green.mob.ai 1
execute store result storage light_green:boss size3 float 0.5 run scoreboard players get @s light_green.mob.ai
scoreboard players add @s light_green.mob.ai 3

function light_green:mob/boss/big_hoglin/rush_summon/mud/tick2 with storage light_green:boss