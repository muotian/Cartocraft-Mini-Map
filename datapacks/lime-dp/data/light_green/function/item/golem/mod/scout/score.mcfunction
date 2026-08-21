scoreboard players remove @s light_green.scout 1 
effect give @s night_vision infinite 0 true
execute if score @s light_green.scout matches 0 run effect clear @s night_vision
execute if score @s light_green.scout matches 0 run scoreboard players reset @s light_green.scout