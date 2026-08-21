execute store result storage light_green:boss id int 1 run scoreboard players get @s light_green.player_id
execute store result storage light_green:boss agony int 1 run scoreboard players get @s light_green.agony


execute if score @s light_green.agony matches 100.. run function light_green:mob/boss/piglin_girl/agony/damage/2_100 with storage light_green:boss
execute unless score @s light_green.agony matches 100.. run function light_green:mob/boss/piglin_girl/agony/damage/2 with storage light_green:boss