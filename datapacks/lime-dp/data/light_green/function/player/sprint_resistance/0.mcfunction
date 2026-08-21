execute if score @s light_green.sprint.resistance matches 1.. run scoreboard players remove @s light_green.sprint.resistance 1
execute if score @s light_green.sprint.resistance matches 0 run effect clear @s resistance
execute if score @s light_green.sprint.resistance matches 0 run function light_green:item/piglin_girl/axe/get_resistance/0 with storage light_green:player
execute if score @s light_green.sprint.resistance matches 0 run scoreboard players reset @s light_green.sprint.resistance