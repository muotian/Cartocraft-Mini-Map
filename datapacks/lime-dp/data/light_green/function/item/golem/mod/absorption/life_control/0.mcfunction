execute store result score $now_hp light_green.main.math run data get entity @s Health
execute store result score @s light_green.heal run scoreboard players operation @s light_green.health -= $now_hp light_green.main.math
scoreboard players reset @s light_green.hurt_schedule
