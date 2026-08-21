scoreboard players remove @s light_green.hoglin.shield.holding 1
tag @s add light_green.take_shield
execute if score @s light_green.hoglin.shield.holding matches 0 run tag @s remove light_green.take_shield
execute if score @s light_green.hoglin.shield.holding matches 0 run scoreboard players reset @s light_green.hoglin.shield