scoreboard players remove @s light_green.break_defanse_time 1
execute if score @s light_green.break_defanse_time matches 0 run attribute @s armor modifier remove light_green:break_defanse-1
execute if score @s light_green.break_defanse_time matches 0 run attribute @s armor modifier remove light_green:break_defanse-2
execute if score @s light_green.break_defanse_time matches 0 run attribute @s armor modifier remove light_green:break_defanse-3
execute if score @s light_green.break_defanse_time matches 0 run attribute @s armor modifier remove light_green:break_defanse-4
execute if score @s light_green.break_defanse_time matches 0 run attribute @s armor modifier remove light_green:break_defanse-5
execute if score @s light_green.break_defanse_time matches 0 run scoreboard players reset @s light_green.break_defanse
execute if score @s light_green.break_defanse_time matches 0 run scoreboard players reset @s light_green.break_defanse_time