execute unless score @s light_green.break_defanse matches 5.. run scoreboard players add @s light_green.break_defanse 1
execute unless score @s light_green.break_defanse matches 5.. run playsound entity.item.break player @s ~ ~ ~ 1 1
execute unless score @s light_green.break_defanse matches 5.. on attacker at @s run playsound entity.item.break player @s ~ ~ ~ 2 1
execute if score @s light_green.break_defanse matches 1 run attribute @s armor modifier add light_green:break_defanse-1 -6 add_value
execute if score @s light_green.break_defanse matches 2 run attribute @s armor modifier add light_green:break_defanse-2 -6 add_value
execute if score @s light_green.break_defanse matches 3 run attribute @s armor modifier add light_green:break_defanse-3 -6 add_value
execute if score @s light_green.break_defanse matches 4 run attribute @s armor modifier add light_green:break_defanse-4 -6 add_value
execute if score @s light_green.break_defanse matches 5 run attribute @s armor modifier add light_green:break_defanse-5 -6 add_value
scoreboard players set @s light_green.break_defanse_time 100